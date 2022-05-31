lbl_804C5FEC:
/* 804C5FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C5FF0  7C 08 02 A6 */	mflr r0
/* 804C5FF4  7C 65 1B 78 */	mr r5, r3
/* 804C5FF8  7C 83 23 78 */	mr r3, r4
/* 804C5FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6000  7C A4 2B 78 */	mr r4, r5
/* 804C6004  38 A5 15 6C */	addi r5, r5, 0x156c
/* 804C6008  48 00 61 75 */	bl bg_item_common_destruct
/* 804C600C  48 00 03 41 */	bl bIT_clip_dt
/* 804C6010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6014  7C 08 03 A6 */	mtlr r0
/* 804C6018  38 21 00 10 */	addi r1, r1, 0x10
/* 804C601C  4E 80 00 20 */	blr 
