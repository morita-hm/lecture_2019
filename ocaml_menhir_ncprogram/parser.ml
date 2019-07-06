
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | Z
    | Y
    | X
    | T
    | ST
    | SHARP
    | SEP
    | S
    | RB
    | O
    | N
    | M
    | LB
    | INT of (
# 12 "parser.mly"
       (int)
# 24 "parser.ml"
  )
    | IF
    | GOTO
    | G
    | FLOAT of (
# 13 "parser.mly"
       (float)
# 32 "parser.ml"
  )
    | F
    | EQ
    | EOL
    | COMMENT
    | BEGINEND
    | B
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState89
  | MenhirState87
  | MenhirState70
  | MenhirState64
  | MenhirState56
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState0

# 5 "parser.mly"
  
open Nccode


# 71 "parser.ml"

let rec _menhir_goto_gcode : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_gcode -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_gcode) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_gcode) : 'tv_gcode) = _v in
    ((let _v : 'tv_cmd = 
# 67 "parser.mly"
           ( _1 )
# 86 "parser.ml"
     in
    _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (int)
# 102 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 12 "parser.mly"
       (int)
# 110 "parser.ml"
        )) : (
# 12 "parser.mly"
       (int)
# 114 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_feed = 
# 138 "parser.mly"
          ( Some _2 )
# 121 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_feed) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState56 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv345 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 134 "parser.ml"
            )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 138 "parser.ml"
            )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 142 "parser.ml"
            )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | M ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv339 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 152 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 156 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 160 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | INT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((((('freshtv335 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 170 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 174 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 178 "parser.ml"
                    )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    let (_v : (
# 12 "parser.mly"
       (int)
# 183 "parser.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((((('freshtv333 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 190 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 194 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 198 "parser.ml"
                    )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    let ((_10 : (
# 12 "parser.mly"
       (int)
# 203 "parser.ml"
                    )) : (
# 12 "parser.mly"
       (int)
# 207 "parser.ml"
                    )) = _v in
                    ((let ((((((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 212 "parser.ml"
                    ))), _), (_4 : (
# 12 "parser.mly"
       (int)
# 216 "parser.ml"
                    ))), _), (_6 : (
# 12 "parser.mly"
       (int)
# 220 "parser.ml"
                    ))), _, (_7 : 'tv_axis)), _, (_8 : 'tv_feed)) = _menhir_stack in
                    let _9 = () in
                    let _5 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : 'tv_gcode = 
# 94 "parser.mly"
      ( G (_2::_4::_6::[], _7, _8) )
# 229 "parser.ml"
                     in
                    _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((((('freshtv337 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 239 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 243 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 247 "parser.ml"
                    )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
            | EOL | SEP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv341 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 256 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 260 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 264 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let ((((((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 269 "parser.ml"
                ))), _), (_4 : (
# 12 "parser.mly"
       (int)
# 273 "parser.ml"
                ))), _), (_6 : (
# 12 "parser.mly"
       (int)
# 277 "parser.ml"
                ))), _, (_7 : 'tv_axis)), _, (_8 : 'tv_feed)) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_gcode = 
# 94 "parser.mly"
      ( G (_2::_4::_6::[], _7, _8) )
# 285 "parser.ml"
                 in
                _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv343 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 295 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 299 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 303 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
        | MenhirState64 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv359 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 312 "parser.ml"
            )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 316 "parser.ml"
            )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | M ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv353 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 326 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 330 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | INT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv349 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 340 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 344 "parser.ml"
                    )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    let (_v : (
# 12 "parser.mly"
       (int)
# 349 "parser.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv347 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 356 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 360 "parser.ml"
                    )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    let ((_8 : (
# 12 "parser.mly"
       (int)
# 365 "parser.ml"
                    )) : (
# 12 "parser.mly"
       (int)
# 369 "parser.ml"
                    )) = _v in
                    ((let ((((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 374 "parser.ml"
                    ))), _), (_4 : (
# 12 "parser.mly"
       (int)
# 378 "parser.ml"
                    ))), _, (_5 : 'tv_axis)), _, (_6 : 'tv_feed)) = _menhir_stack in
                    let _7 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : 'tv_gcode = 
# 100 "parser.mly"
      ( G (_2::_4::[], _5, _6) )
# 386 "parser.ml"
                     in
                    _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv351 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 396 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 400 "parser.ml"
                    )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)) : 'freshtv354)
            | EOL | SEP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv355 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 409 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 413 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let ((((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 418 "parser.ml"
                ))), _), (_4 : (
# 12 "parser.mly"
       (int)
# 422 "parser.ml"
                ))), _, (_5 : 'tv_axis)), _, (_6 : 'tv_feed)) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_gcode = 
# 100 "parser.mly"
      ( G (_2::_4::[], _5, _6) )
# 429 "parser.ml"
                 in
                _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv357 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 439 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 443 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)
        | MenhirState70 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv373 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 452 "parser.ml"
            )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | M ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv367 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 462 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | INT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv363 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 472 "parser.ml"
                    )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    let (_v : (
# 12 "parser.mly"
       (int)
# 477 "parser.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv361 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 484 "parser.ml"
                    )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    let ((_6 : (
# 12 "parser.mly"
       (int)
# 489 "parser.ml"
                    )) : (
# 12 "parser.mly"
       (int)
# 493 "parser.ml"
                    )) = _v in
                    ((let ((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 498 "parser.ml"
                    ))), _, (_3 : 'tv_axis)), _, (_4 : 'tv_feed)) = _menhir_stack in
                    let _5 = () in
                    let _1 = () in
                    let _v : 'tv_gcode = 
# 106 "parser.mly"
      ( G (_2::[], _3, _4) )
# 505 "parser.ml"
                     in
                    _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv365 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 515 "parser.ml"
                    )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
            | EOL | SEP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv369 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 524 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 529 "parser.ml"
                ))), _, (_3 : 'tv_axis)), _, (_4 : 'tv_feed)) = _menhir_stack in
                let _1 = () in
                let _v : 'tv_gcode = 
# 106 "parser.mly"
      ( G (_2::[], _3, _4) )
# 535 "parser.ml"
                 in
                _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv371 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 545 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
        | MenhirState89 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv387 * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | M ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv381 * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | INT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    let (_v : (
# 12 "parser.mly"
       (int)
# 567 "parser.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    let ((_4 : (
# 12 "parser.mly"
       (int)
# 575 "parser.ml"
                    )) : (
# 12 "parser.mly"
       (int)
# 579 "parser.ml"
                    )) = _v in
                    ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_axis)), _, (_2 : 'tv_feed)) = _menhir_stack in
                    let _3 = () in
                    let _v : 'tv_gcode = 
# 112 "parser.mly"
      ( G ([], _1, _2) )
# 586 "parser.ml"
                     in
                    _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv379 * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)
            | EOL | SEP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv383 * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_axis)), _, (_2 : 'tv_feed)) = _menhir_stack in
                let _v : 'tv_gcode = 
# 112 "parser.mly"
      ( G ([], _1, _2) )
# 603 "parser.ml"
                 in
                _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv385 * _menhir_state * 'tv_axis) * _menhir_state * 'tv_feed) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
        | _ ->
            _menhir_fail ()) : 'freshtv390)) : 'freshtv392)) : 'freshtv394)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_axis : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_axis -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv295 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 637 "parser.ml"
        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 641 "parser.ml"
        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 645 "parser.ml"
        )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | F ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | M ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv291 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 657 "parser.ml"
            )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 661 "parser.ml"
            )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 665 "parser.ml"
            )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState56 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv287 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 677 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 681 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 685 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 690 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv285 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 697 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 701 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 705 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                let ((_9 : (
# 12 "parser.mly"
       (int)
# 710 "parser.ml"
                )) : (
# 12 "parser.mly"
       (int)
# 714 "parser.ml"
                )) = _v in
                ((let ((((((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 719 "parser.ml"
                ))), _), (_4 : (
# 12 "parser.mly"
       (int)
# 723 "parser.ml"
                ))), _), (_6 : (
# 12 "parser.mly"
       (int)
# 727 "parser.ml"
                ))), _, (_7 : 'tv_axis)), _) = _menhir_stack in
                let _8 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_gcode = 
# 97 "parser.mly"
      ( G (_2::_4::_6::[], _7, None) )
# 736 "parser.ml"
                 in
                _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)) : 'freshtv288)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv289 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 746 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 750 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 754 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
        | EOL | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv293 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 763 "parser.ml"
            )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 767 "parser.ml"
            )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 771 "parser.ml"
            )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
            ((let (((((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 776 "parser.ml"
            ))), _), (_4 : (
# 12 "parser.mly"
       (int)
# 780 "parser.ml"
            ))), _), (_6 : (
# 12 "parser.mly"
       (int)
# 784 "parser.ml"
            ))), _, (_7 : 'tv_axis)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_gcode = 
# 97 "parser.mly"
      ( G (_2::_4::_6::[], _7, None) )
# 792 "parser.ml"
             in
            _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv296)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv307 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 804 "parser.ml"
        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 808 "parser.ml"
        )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | F ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | M ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv303 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 820 "parser.ml"
            )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 824 "parser.ml"
            )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState64 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv299 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 836 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 840 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 845 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv297 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 852 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 856 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                let ((_7 : (
# 12 "parser.mly"
       (int)
# 861 "parser.ml"
                )) : (
# 12 "parser.mly"
       (int)
# 865 "parser.ml"
                )) = _v in
                ((let ((((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 870 "parser.ml"
                ))), _), (_4 : (
# 12 "parser.mly"
       (int)
# 874 "parser.ml"
                ))), _, (_5 : 'tv_axis)), _) = _menhir_stack in
                let _6 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_gcode = 
# 103 "parser.mly"
      ( G (_2::_4::[], _5, None) )
# 882 "parser.ml"
                 in
                _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)) : 'freshtv300)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv301 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 892 "parser.ml"
                )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 896 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
        | EOL | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv305 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 905 "parser.ml"
            )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 909 "parser.ml"
            )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 914 "parser.ml"
            ))), _), (_4 : (
# 12 "parser.mly"
       (int)
# 918 "parser.ml"
            ))), _, (_5 : 'tv_axis)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_gcode = 
# 103 "parser.mly"
      ( G (_2::_4::[], _5, None) )
# 925 "parser.ml"
             in
            _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv308)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 937 "parser.ml"
        )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | F ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | M ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 949 "parser.ml"
            )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState70 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv311 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 961 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 966 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv309 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 973 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                let ((_5 : (
# 12 "parser.mly"
       (int)
# 978 "parser.ml"
                )) : (
# 12 "parser.mly"
       (int)
# 982 "parser.ml"
                )) = _v in
                ((let ((((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 987 "parser.ml"
                ))), _, (_3 : 'tv_axis)), _) = _menhir_stack in
                let _4 = () in
                let _1 = () in
                let _v : 'tv_gcode = 
# 109 "parser.mly"
      ( G (_2::[], _3, None) )
# 994 "parser.ml"
                 in
                _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)) : 'freshtv312)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv313 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1004 "parser.ml"
                )) * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
        | EOL | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv317 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1013 "parser.ml"
            )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 1018 "parser.ml"
            ))), _, (_3 : 'tv_axis)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_gcode = 
# 109 "parser.mly"
      ( G (_2::[], _3, None) )
# 1024 "parser.ml"
             in
            _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv320)
    | MenhirState0 | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | F ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | M ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState89 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv323 * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 1053 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv321 * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                let ((_3 : (
# 12 "parser.mly"
       (int)
# 1061 "parser.ml"
                )) : (
# 12 "parser.mly"
       (int)
# 1065 "parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_axis)), _) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_gcode = 
# 115 "parser.mly"
      ( G ([], _1, None) )
# 1072 "parser.ml"
                 in
                _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)) : 'freshtv324)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv325 * _menhir_state * 'tv_axis) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
        | EOL | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_axis)) = _menhir_stack in
            let _v : 'tv_gcode = 
# 115 "parser.mly"
      ( G ([], _1, None) )
# 1089 "parser.ml"
             in
            _menhir_goto_gcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv332)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ocode : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ocode -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv283) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ocode) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_ocode) : 'tv_ocode) = _v in
    ((let _v : 'tv_cmd = 
# 65 "parser.mly"
           ( _1 )
# 1112 "parser.ml"
     in
    _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)

and _menhir_goto_ncode : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ncode -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ncode) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_ncode) : 'tv_ncode) = _v in
    ((let _v : 'tv_cmd = 
# 66 "parser.mly"
           ( _1 )
# 1129 "parser.ml"
     in
    _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)

and _menhir_goto_mcode : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_mcode -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_mcode) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_mcode) : 'tv_mcode) = _v in
    ((let _v : 'tv_cmd = 
# 68 "parser.mly"
           ( _1 )
# 1146 "parser.ml"
     in
    _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)

and _menhir_goto_cmd : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_cmd -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_cmd) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_cmd) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGINEND ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | G ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | IF ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | M ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | N ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | O ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | S ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | SHARP ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | X ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | Y ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | Z ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv263 * _menhir_state * 'tv_cmd)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_cmd)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 58 "parser.mly"
                         ( _1 :: [] )
# 1196 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv266)
    | EOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_cmd) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_cmd)) = _menhir_stack in
        let _v : 'tv_expr = 
# 57 "parser.mly"
                         ( _1 :: [] )
# 1210 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_cmd) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)) : 'freshtv272)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 45 "parser.mly"
      (Nccode.t list)
# 1241 "parser.ml"
            ) = 
# 51 "parser.mly"
                     ( _1 )
# 1245 "parser.ml"
             in
            _menhir_goto_main _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_cmd)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_cmd)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_cmd)), _, (_3 : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 59 "parser.mly"
                         ( _1 :: _3 )
# 1265 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * 'tv_cmd)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1289 "parser.ml"
        )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv239 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1298 "parser.ml"
        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1302 "parser.ml"
        )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv241 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1311 "parser.ml"
        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1315 "parser.ml"
        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1319 "parser.ml"
        )) * _menhir_state * 'tv_axis) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv243 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1328 "parser.ml"
        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1332 "parser.ml"
        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1336 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv245 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1345 "parser.ml"
        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1349 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1358 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv250)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "parser.mly"
       (float)
# 1379 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 13 "parser.mly"
       (float)
# 1387 "parser.ml"
        )) : (
# 13 "parser.mly"
       (float)
# 1391 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_axis = 
# 133 "parser.mly"
      ( XYZ (None, None, Some _2) )
# 1398 "parser.ml"
         in
        _menhir_goto_axis _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)) : 'freshtv230)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "parser.mly"
       (float)
# 1421 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Z ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1432 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FLOAT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv213 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1442 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "parser.mly"
       (float)
# 1447 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv211 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1454 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((_4 : (
# 13 "parser.mly"
       (float)
# 1459 "parser.ml"
                )) : (
# 13 "parser.mly"
       (float)
# 1463 "parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (_2 : (
# 13 "parser.mly"
       (float)
# 1468 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_axis = 
# 127 "parser.mly"
      ( XYZ (None, Some _2, Some _4) )
# 1475 "parser.ml"
                 in
                _menhir_goto_axis _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)) : 'freshtv214)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv215 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1485 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)
        | EOL | F | M | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv219 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1494 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 13 "parser.mly"
       (float)
# 1499 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_axis = 
# 131 "parser.mly"
      ( XYZ (None, Some _2, None) )
# 1505 "parser.ml"
             in
            _menhir_goto_axis _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv221 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1515 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLOAT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "parser.mly"
       (float)
# 1539 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Y ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv193 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1550 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FLOAT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv189 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1560 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "parser.mly"
       (float)
# 1565 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | Z ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv183 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1576 "parser.ml"
                    ))) * (
# 13 "parser.mly"
       (float)
# 1580 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | FLOAT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv179 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1590 "parser.ml"
                        ))) * (
# 13 "parser.mly"
       (float)
# 1594 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 13 "parser.mly"
       (float)
# 1599 "parser.ml"
                        )) = _v in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv177 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1606 "parser.ml"
                        ))) * (
# 13 "parser.mly"
       (float)
# 1610 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let ((_6 : (
# 13 "parser.mly"
       (float)
# 1615 "parser.ml"
                        )) : (
# 13 "parser.mly"
       (float)
# 1619 "parser.ml"
                        )) = _v in
                        ((let (((_menhir_stack, _menhir_s), (_2 : (
# 13 "parser.mly"
       (float)
# 1624 "parser.ml"
                        ))), (_4 : (
# 13 "parser.mly"
       (float)
# 1628 "parser.ml"
                        ))) = _menhir_stack in
                        let _5 = () in
                        let _3 = () in
                        let _1 = () in
                        let _v : 'tv_axis = 
# 121 "parser.mly"
      ( XYZ (Some _2, Some _4, Some _6) )
# 1636 "parser.ml"
                         in
                        _menhir_goto_axis _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv181 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1646 "parser.ml"
                        ))) * (
# 13 "parser.mly"
       (float)
# 1650 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
                | EOL | F | M | SEP ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv185 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1659 "parser.ml"
                    ))) * (
# 13 "parser.mly"
       (float)
# 1663 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), (_2 : (
# 13 "parser.mly"
       (float)
# 1668 "parser.ml"
                    ))), (_4 : (
# 13 "parser.mly"
       (float)
# 1672 "parser.ml"
                    ))) = _menhir_stack in
                    let _3 = () in
                    let _1 = () in
                    let _v : 'tv_axis = 
# 123 "parser.mly"
      ( XYZ (Some _2, Some _4, None) )
# 1679 "parser.ml"
                     in
                    _menhir_goto_axis _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv187 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1689 "parser.ml"
                    ))) * (
# 13 "parser.mly"
       (float)
# 1693 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv191 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1704 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
        | Z ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1713 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FLOAT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv197 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1723 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 13 "parser.mly"
       (float)
# 1728 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv195 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1735 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((_4 : (
# 13 "parser.mly"
       (float)
# 1740 "parser.ml"
                )) : (
# 13 "parser.mly"
       (float)
# 1744 "parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (_2 : (
# 13 "parser.mly"
       (float)
# 1749 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_axis = 
# 125 "parser.mly"
      ( XYZ (Some _2, None, Some _4) )
# 1756 "parser.ml"
                 in
                _menhir_goto_axis _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv199 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1766 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
        | EOL | F | M | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv203 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1775 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 13 "parser.mly"
       (float)
# 1780 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_axis = 
# 129 "parser.mly"
      ( XYZ (Some _2, None, None) )
# 1786 "parser.ml"
             in
            _menhir_goto_axis _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv205 * _menhir_state) * (
# 13 "parser.mly"
       (float)
# 1796 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (int)
# 1820 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | M ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv169 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1831 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv165 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1841 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 1846 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv163 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1853 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((_4 : (
# 12 "parser.mly"
       (int)
# 1858 "parser.ml"
                )) : (
# 12 "parser.mly"
       (int)
# 1862 "parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 1867 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_mcode = 
# 148 "parser.mly"
      ( M (Some _4, Some _2, None) )
# 1874 "parser.ml"
                 in
                _menhir_goto_mcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv167 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1884 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv171 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1895 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)) : 'freshtv174)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (int)
# 1919 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv155 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1930 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv151 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1940 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 1945 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv149 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 1952 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((_4 : (
# 12 "parser.mly"
       (int)
# 1957 "parser.ml"
                )) : (
# 12 "parser.mly"
       (int)
# 1961 "parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 1966 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_assign = 
# 161 "parser.mly"
                     ( ASSIGN (_2, _4) )
# 1973 "parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv147) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_assign) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_assign) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv143) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : 'tv_assign) : 'tv_assign) = _v in
                ((let _v : 'tv_cmd = 
# 69 "parser.mly"
           ( _1 )
# 1990 "parser.ml"
                 in
                _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)) : 'freshtv148)) : 'freshtv150)) : 'freshtv152)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv153 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2000 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)) : 'freshtv156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2011 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (int)
# 2035 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | M ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv133 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2046 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv129 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2056 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 2061 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv127 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2068 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((_4 : (
# 12 "parser.mly"
       (int)
# 2073 "parser.ml"
                )) : (
# 12 "parser.mly"
       (int)
# 2077 "parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2082 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_mcode = 
# 154 "parser.mly"
      ( M (Some _4, None, Some _2) )
# 2089 "parser.ml"
                 in
                _menhir_goto_mcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv131 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2099 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
        | EOL | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv135 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2108 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2113 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_mcode = 
# 156 "parser.mly"
      ( M (None, None, Some _2) )
# 2119 "parser.ml"
             in
            _menhir_goto_mcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv137 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2129 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)) : 'freshtv140)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (int)
# 2153 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv117 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2164 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv115 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2171 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2176 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ocode = 
# 78 "parser.mly"
      ( O _2 )
# 2183 "parser.ml"
             in
            _menhir_goto_ocode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
        | EOL | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv119 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2191 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2196 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_ocode = 
# 78 "parser.mly"
      ( O _2 )
# 2202 "parser.ml"
             in
            _menhir_goto_ocode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv121 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2212 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)) : 'freshtv124)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (int)
# 2236 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv105 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2247 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv103 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2254 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2259 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ncode = 
# 85 "parser.mly"
      ( N _2 )
# 2266 "parser.ml"
             in
            _menhir_goto_ncode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv104)) : 'freshtv106)
        | EOL | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv107 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2274 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2279 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_ncode = 
# 85 "parser.mly"
      ( N _2 )
# 2285 "parser.ml"
             in
            _menhir_goto_ncode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv108)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv109 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2295 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (int)
# 2319 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | S ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2330 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv81 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2340 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 2345 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | T ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv75 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2356 "parser.ml"
                    ))) * (
# 12 "parser.mly"
       (int)
# 2360 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | INT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv71 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2370 "parser.ml"
                        ))) * (
# 12 "parser.mly"
       (int)
# 2374 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 12 "parser.mly"
       (int)
# 2379 "parser.ml"
                        )) = _v in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv69 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2386 "parser.ml"
                        ))) * (
# 12 "parser.mly"
       (int)
# 2390 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let ((_6 : (
# 12 "parser.mly"
       (int)
# 2395 "parser.ml"
                        )) : (
# 12 "parser.mly"
       (int)
# 2399 "parser.ml"
                        )) = _v in
                        ((let (((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2404 "parser.ml"
                        ))), (_4 : (
# 12 "parser.mly"
       (int)
# 2408 "parser.ml"
                        ))) = _menhir_stack in
                        let _5 = () in
                        let _3 = () in
                        let _1 = () in
                        let _v : 'tv_mcode = 
# 150 "parser.mly"
      ( M (Some _2, Some _6, Some _4) )
# 2416 "parser.ml"
                         in
                        _menhir_goto_mcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)) : 'freshtv72)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv73 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2426 "parser.ml"
                        ))) * (
# 12 "parser.mly"
       (int)
# 2430 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
                | EOL | SEP ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv77 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2439 "parser.ml"
                    ))) * (
# 12 "parser.mly"
       (int)
# 2443 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2448 "parser.ml"
                    ))), (_4 : (
# 12 "parser.mly"
       (int)
# 2452 "parser.ml"
                    ))) = _menhir_stack in
                    let _3 = () in
                    let _1 = () in
                    let _v : 'tv_mcode = 
# 152 "parser.mly"
      ( M (Some _2, None, Some _4) )
# 2459 "parser.ml"
                     in
                    _menhir_goto_mcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv79 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2469 "parser.ml"
                    ))) * (
# 12 "parser.mly"
       (int)
# 2473 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv83 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2484 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)) : 'freshtv86)
        | T ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv93 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2493 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv89 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2503 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 2508 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv87 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2515 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((_4 : (
# 12 "parser.mly"
       (int)
# 2520 "parser.ml"
                )) : (
# 12 "parser.mly"
       (int)
# 2524 "parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2529 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_mcode = 
# 146 "parser.mly"
      ( M (Some _2, Some _4, None) )
# 2536 "parser.ml"
                 in
                _menhir_goto_mcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv88)) : 'freshtv90)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv91 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2546 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)) : 'freshtv94)
        | EOL | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2555 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 12 "parser.mly"
       (int)
# 2560 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_mcode = 
# 144 "parser.mly"
      ( M (Some _2, None, None) )
# 2566 "parser.ml"
             in
            _menhir_goto_mcode _menhir_env _menhir_stack _menhir_s _v) : 'freshtv96)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv97 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2576 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)) : 'freshtv100)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LB ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SHARP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv61 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv57 * _menhir_state))) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 2612 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EQ ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv53 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2623 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | INT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv49 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2633 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 12 "parser.mly"
       (int)
# 2638 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RB ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv45 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2649 "parser.ml"
                            ))) * (
# 12 "parser.mly"
       (int)
# 2653 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | GOTO ->
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : (((((('freshtv41 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2663 "parser.ml"
                                ))) * (
# 12 "parser.mly"
       (int)
# 2667 "parser.ml"
                                ))) = Obj.magic _menhir_stack in
                                ((let _menhir_env = _menhir_discard _menhir_env in
                                let _tok = _menhir_env._menhir_token in
                                match _tok with
                                | INT _v ->
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : ((((((('freshtv37 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2677 "parser.ml"
                                    ))) * (
# 12 "parser.mly"
       (int)
# 2681 "parser.ml"
                                    )))) = Obj.magic _menhir_stack in
                                    let (_v : (
# 12 "parser.mly"
       (int)
# 2686 "parser.ml"
                                    )) = _v in
                                    ((let _menhir_env = _menhir_discard _menhir_env in
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : ((((((('freshtv35 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2693 "parser.ml"
                                    ))) * (
# 12 "parser.mly"
       (int)
# 2697 "parser.ml"
                                    )))) = Obj.magic _menhir_stack in
                                    let ((_9 : (
# 12 "parser.mly"
       (int)
# 2702 "parser.ml"
                                    )) : (
# 12 "parser.mly"
       (int)
# 2706 "parser.ml"
                                    )) = _v in
                                    ((let (((_menhir_stack, _menhir_s), (_4 : (
# 12 "parser.mly"
       (int)
# 2711 "parser.ml"
                                    ))), (_6 : (
# 12 "parser.mly"
       (int)
# 2715 "parser.ml"
                                    ))) = _menhir_stack in
                                    let _8 = () in
                                    let _7 = () in
                                    let _5 = () in
                                    let _3 = () in
                                    let _2 = () in
                                    let _1 = () in
                                    let _v : 'tv_cmp = 
# 165 "parser.mly"
                                       ( CMPGOTO (_4,_6,_9) )
# 2726 "parser.ml"
                                     in
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : 'freshtv33) = _menhir_stack in
                                    let (_menhir_s : _menhir_state) = _menhir_s in
                                    let (_v : 'tv_cmp) = _v in
                                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
                                    let (_menhir_s : _menhir_state) = _menhir_s in
                                    let (_v : 'tv_cmp) = _v in
                                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
                                    let (_menhir_s : _menhir_state) = _menhir_s in
                                    let ((_1 : 'tv_cmp) : 'tv_cmp) = _v in
                                    ((let _v : 'tv_cmd = 
# 70 "parser.mly"
           ( _1 )
# 2743 "parser.ml"
                                     in
                                    _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)) : 'freshtv32)) : 'freshtv34)) : 'freshtv36)) : 'freshtv38)
                                | _ ->
                                    assert (not _menhir_env._menhir_error);
                                    _menhir_env._menhir_error <- true;
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : ((((((('freshtv39 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2753 "parser.ml"
                                    ))) * (
# 12 "parser.mly"
       (int)
# 2757 "parser.ml"
                                    )))) = Obj.magic _menhir_stack in
                                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : (((((('freshtv43 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2768 "parser.ml"
                                ))) * (
# 12 "parser.mly"
       (int)
# 2772 "parser.ml"
                                ))) = Obj.magic _menhir_stack in
                                ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv47 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2783 "parser.ml"
                            ))) * (
# 12 "parser.mly"
       (int)
# 2787 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv51 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2798 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)) : 'freshtv54)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv55 * _menhir_state))) * (
# 12 "parser.mly"
       (int)
# 2809 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)) : 'freshtv58)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv59 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv63 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)) : 'freshtv66)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (int)
# 2847 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | G ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv23 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2858 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState51 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv19 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2870 "parser.ml"
                )) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 12 "parser.mly"
       (int)
# 2875 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | G ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv17 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2886 "parser.ml"
                    )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2890 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState53 in
                    ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | INT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv13 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2902 "parser.ml"
                        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2906 "parser.ml"
                        )) * _menhir_state) = Obj.magic _menhir_stack in
                        let (_v : (
# 12 "parser.mly"
       (int)
# 2911 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | X ->
                            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
                        | Y ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
                        | Z ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState55
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv14)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv15 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2934 "parser.ml"
                        )) * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2938 "parser.ml"
                        )) * _menhir_state) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
                | X ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | Y ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | Z ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv20)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv21 * _menhir_state) * (
# 12 "parser.mly"
       (int)
# 2959 "parser.ml"
                )) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)) : 'freshtv24)
        | X ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | Y ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | Z ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)

and _menhir_goto_main : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 45 "parser.mly"
      (Nccode.t list)
# 2984 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 45 "parser.mly"
      (Nccode.t list)
# 2993 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 45 "parser.mly"
      (Nccode.t list)
# 3001 "parser.ml"
    )) : (
# 45 "parser.mly"
      (Nccode.t list)
# 3005 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv10)) : 'freshtv12)

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 56 "parser.mly"
                         ( BEGINEND :: [] )
# 3019 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 45 "parser.mly"
      (Nccode.t list)
# 3038 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGINEND ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 45 "parser.mly"
      (Nccode.t list)
# 3070 "parser.ml"
        ) = 
# 50 "parser.mly"
                     ( EMPTY :: [] )
# 3074 "parser.ml"
         in
        _menhir_goto_main _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | G ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IF ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | M ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | N ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | O ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | S ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SHARP ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | T ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | X ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | Y ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | Z ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6))

# 269 "/Users/morita_hiromitsu/.opam/4.05.0/lib/menhir/standard.mly"
  

# 3107 "parser.ml"
