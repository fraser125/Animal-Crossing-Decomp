lbl_80429210:
/* 80429210  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80429214  7C 08 02 A6 */	mflr r0
/* 80429218  90 01 00 44 */	stw r0, 0x44(r1)
/* 8042921C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80429220  7C 9F 23 78 */	mr r31, r4
/* 80429224  38 80 00 07 */	li r4, 7
/* 80429228  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8042922C  7C 7E 1B 78 */	mr r30, r3
/* 80429230  38 60 00 01 */	li r3, 1
/* 80429234  4B F7 4B 99 */	bl mEv_get_save_area
/* 80429238  A8 83 00 06 */	lha r4, 6(r3)
/* 8042923C  3C 00 43 30 */	lis r0, 0x4330
/* 80429240  3C A0 80 64 */	lis r5, data_8064400C@ha /* 0x8064400C@ha */
/* 80429244  90 01 00 18 */	stw r0, 0x18(r1)
/* 80429248  38 84 00 14 */	addi r4, r4, 0x14
/* 8042924C  C8 25 40 0C */	lfd f1, data_8064400C@l(r5)  /* 0x8064400C@l */
/* 80429250  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80429254  90 01 00 20 */	stw r0, 0x20(r1)
/* 80429258  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8042925C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80429260  90 01 00 28 */	stw r0, 0x28(r1)
/* 80429264  EC 00 08 28 */	fsubs f0, f0, f1
/* 80429268  D0 01 00 08 */	stfs f0, 8(r1)
/* 8042926C  A8 03 00 0A */	lha r0, 0xa(r3)
/* 80429270  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80429274  90 01 00 24 */	stw r0, 0x24(r1)
/* 80429278  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8042927C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80429280  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80429284  A8 83 00 08 */	lha r4, 8(r3)
/* 80429288  7F E3 FB 78 */	mr r3, r31
/* 8042928C  38 04 00 55 */	addi r0, r4, 0x55
/* 80429290  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80429294  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80429298  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8042929C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804292A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804292A4  4B FB 03 CD */	bl mPlib_get_player_actor_main_index
/* 804292A8  2C 03 00 58 */	cmpwi r3, 0x58
/* 804292AC  41 82 00 18 */	beq lbl_804292C4
/* 804292B0  7F E3 FB 78 */	mr r3, r31
/* 804292B4  38 81 00 08 */	addi r4, r1, 8
/* 804292B8  38 A0 80 00 */	li r5, -32768
/* 804292BC  4B FB 16 95 */	bl mPlib_request_main_pray_type1
/* 804292C0  48 00 00 10 */	b lbl_804292D0
lbl_804292C4:
/* 804292C4  7F C3 F3 78 */	mr r3, r30
/* 804292C8  38 80 00 06 */	li r4, 6
/* 804292CC  48 00 01 B1 */	bl aHTC_setup_move_proc
lbl_804292D0:
/* 804292D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804292D4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804292D8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804292DC  7C 08 03 A6 */	mtlr r0
/* 804292E0  38 21 00 40 */	addi r1, r1, 0x40
/* 804292E4  4E 80 00 20 */	blr 
