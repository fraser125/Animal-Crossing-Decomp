lbl_8053A9C8:
/* 8053A9C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053A9CC  7C 08 02 A6 */	mflr r0
/* 8053A9D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053A9D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053A9D8  7C 7F 1B 78 */	mr r31, r3
/* 8053A9DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8053A9E0  7C 9E 23 78 */	mr r30, r4
/* 8053A9E4  4B FF 16 65 */	bl func_8052C048
/* 8053A9E8  4B E6 04 D1 */	bl mEv_CheckTitleDemo
/* 8053A9EC  2C 03 00 00 */	cmpwi r3, 0
/* 8053A9F0  41 81 00 0C */	bgt lbl_8053A9FC
/* 8053A9F4  7F C3 F3 78 */	mr r3, r30
/* 8053A9F8  4B FF FD 25 */	bl aNPC_greeting_area_check
lbl_8053A9FC:
/* 8053A9FC  4B FF FE 61 */	bl aNPC_set_attention
/* 8053AA00  4B E6 D4 C5 */	bl mFI_ActorisBorn
/* 8053AA04  2C 03 00 01 */	cmpwi r3, 1
/* 8053AA08  40 82 00 14 */	bne lbl_8053AA1C
/* 8053AA0C  7F E3 FB 78 */	mr r3, r31
/* 8053AA10  4B FF FE B5 */	bl aNPC_force_reset_out_of_door_flg
/* 8053AA14  7F E3 FB 78 */	mr r3, r31
/* 8053AA18  4B FF FF 31 */	bl aNPC_force_reset_umb_open_flg
lbl_8053AA1C:
/* 8053AA1C  80 7F 09 CC */	lwz r3, 0x9cc(r31)
/* 8053AA20  2C 03 00 00 */	cmpwi r3, 0
/* 8053AA24  40 81 00 18 */	ble lbl_8053AA3C
/* 8053AA28  2C 03 00 B4 */	cmpwi r3, 0xb4
/* 8053AA2C  40 80 00 10 */	bge lbl_8053AA3C
/* 8053AA30  38 03 FF FF */	addi r0, r3, -1
/* 8053AA34  90 1F 09 CC */	stw r0, 0x9cc(r31)
/* 8053AA38  48 00 00 0C */	b lbl_8053AA44
lbl_8053AA3C:
/* 8053AA3C  7F E3 FB 78 */	mr r3, r31
/* 8053AA40  4B FF FE 85 */	bl aNPC_force_reset_out_of_door_flg
lbl_8053AA44:
/* 8053AA44  80 7F 09 D4 */	lwz r3, 0x9d4(r31)
/* 8053AA48  2C 03 00 00 */	cmpwi r3, 0
/* 8053AA4C  40 81 00 18 */	ble lbl_8053AA64
/* 8053AA50  2C 03 00 3C */	cmpwi r3, 0x3c
/* 8053AA54  40 80 00 10 */	bge lbl_8053AA64
/* 8053AA58  38 03 FF FF */	addi r0, r3, -1
/* 8053AA5C  90 1F 09 D4 */	stw r0, 0x9d4(r31)
/* 8053AA60  48 00 00 0C */	b lbl_8053AA6C
lbl_8053AA64:
/* 8053AA64  7F E3 FB 78 */	mr r3, r31
/* 8053AA68  4B FF FE E1 */	bl aNPC_force_reset_umb_open_flg
lbl_8053AA6C:
/* 8053AA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053AA70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053AA74  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053AA78  7C 08 03 A6 */	mtlr r0
/* 8053AA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053AA80  4E 80 00 20 */	blr 
