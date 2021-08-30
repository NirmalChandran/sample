//
//  DA_Dynamics.swift
//  Demo
//
//  Created by Rajvimal Arumugam on 03/04/21.
//

import Foundation
import SQLite3
import FMDB



class DA_Dynamics {
    
    
    
    func databasePath() -> NSString
    {
        let DBpath:String = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("IOSSalesapp/syscon/syscon.sqlite").path

        
        
        if (FileManager.default.fileExists(atPath: DBpath))
        {
            return DBpath as NSString
        }
        return DBpath as NSString
    }
    
    func executeQuery (query : String ) -> NSInteger {
        
        var rtn : Int = 0;
        
        var rtnHashmap: Dictionary<String,String> = Dictionary<String, String>()
        databasePath()
        let DBpath:String=self.databasePath() as String
        let database = FMDatabase(path: DBpath)
                do {
                    
                    database.executeStatements(query)
                    } catch {
                    
                    rtn = -1;

             }
                if(query.contains("TEMP")){
        
                            }else {
        
                                database.close()
                            }

                return rtn;
        
    }
    
    func  getGridviewValues( query : String ) -> Array<BE_GridFunctions> {
        
        
        var result:Array<BE_GridFunctions>=[]

        let DBpath:String=self.databasePath() as String

        var db: OpaquePointer? = nil
        var stmt:OpaquePointer? = nil
        
        print("GRID CONFIG QUERY\(query)")
        
        let strExec=query.cString(using: String.Encoding.utf8)

        if ( sqlite3_open(DBpath,&db) == SQLITE_OK)
        {
            if (sqlite3_prepare_v2(db, strExec! , -1, &stmt, nil) == SQLITE_OK)
            {
                while (sqlite3_step(stmt) == SQLITE_ROW)
                {
                    let mod = BE_GridFunctions()
                    
                    mod.FunctionName = String(cString: sqlite3_column_text(stmt, 0))
                    mod.FunctionText = String(cString: sqlite3_column_text(stmt, 1))
                    mod.ScreenName = String(cString: sqlite3_column_text(stmt, 2))
                    mod.PageName = String(cString: sqlite3_column_text(stmt, 3))
                    mod.Access = Int(sqlite3_column_int(stmt, 4))
                    mod.PageNo = Int(sqlite3_column_int(stmt, 5))
                    mod.RowNo = Int(sqlite3_column_int(stmt, 6))
                    mod.ColNo = Int(sqlite3_column_int(stmt, 7))
                    
                    result.insert(mod, at: result.count)
                    
                }
                
                print(result)
                sqlite3_finalize(stmt)
            }
            sqlite3_close(db)
        }
        return result
    }
        
        
        
//            Array<BE_GridFunctions> rtn = new Array<>();
//
//            do {
//                open();
//
//                Cursor cursor = db.rawQuery(query, null);
//
//                if (cursor.getCount() > 0) {
//                    while (cursor.moveToNext()) {
//                        int i = 0;
//                        BE_GridFunctions rec = new BE_GridFunctions();
//                        rec.FunctionName = cursor.getString(i++);
//                        rec.FunctionText = cursor.getString(i++);
//                        rec.ScreenName = cursor.getString(i++);
//                        rec.PageName = cursor.getString(i++);
//                        rec.Access = cursor.getInt(i++);
//                        rec.PageNo = cursor.getInt(i++);
//                        rec.RowNo = cursor.getInt(i++);
//                        rec.ColNo = cursor.getInt(i++);
//
//                        rec.ImageName = rec.PageName + "_" + rec.Access + "_" + rec.PageNo + "_" + rec.RowNo + "_" + rec.ColNo;
//                        rtn.add(rec);
//                    }
//                }
//
//                cursor.close();
//
//            } catch (Exception e) {
//                Log.e("ERR>", e.getMessage());
//                Log.e("Query>", query);
//                e.printStackTrace();
//
//            } finally {
//                close();
//            }
//
//            return rtn;
        }
    

