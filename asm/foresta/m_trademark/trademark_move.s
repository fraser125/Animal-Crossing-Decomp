lbl_8062BB10:
/* 8062BB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062BB14  7C 08 02 A6 */	mflr r0
/* 8062BB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062BB1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062BB20  7C 7F 1B 78 */	mr r31, r3
/* 8062BB24  3C 7F 00 02 */	addis r3, r31, 2
/* 8062BB28  88 03 5A 66 */	lbz r0, 0x5a66(r3)
/* 8062BB2C  28 00 00 00 */	cmplwi r0, 0
/* 8062BB30  40 82 00 30 */	bne lbl_8062BB60
/* 8062BB34  4B DC 67 D1 */	bl mTD_get_titledemo_no
/* 8062BB38  3C A0 80 6D */	lis r5, s_titlebgm@ha /* 0x806D4A10@ha */
/* 8062BB3C  38 80 01 68 */	li r4, 0x168
/* 8062BB40  38 A5 4A 10 */	addi r5, r5, s_titlebgm@l /* 0x806D4A10@l */
/* 8062BB44  7C 65 18 AE */	lbzx r3, r5, r3
/* 8062BB48  4B D4 FF 11 */	bl mBGMPsComp_make_ps_lost_fanfare
/* 8062BB4C  3C 7F 00 02 */	addis r3, r31, 2
/* 8062BB50  38 00 00 00 */	li r0, 0
/* 8062BB54  90 03 5A 58 */	stw r0, 0x5a58(r3)
/* 8062BB58  38 00 00 01 */	li r0, 1
/* 8062BB5C  98 03 5A 66 */	stb r0, 0x5a66(r3)
lbl_8062BB60:
/* 8062BB60  3C 9F 00 02 */	addis r4, r31, 2
/* 8062BB64  88 04 5A 66 */	lbz r0, 0x5a66(r4)
/* 8062BB68  28 00 00 01 */	cmplwi r0, 1
/* 8062BB6C  40 82 00 38 */	bne lbl_8062BBA4
/* 8062BB70  A8 64 5A 60 */	lha r3, 0x5a60(r4)
/* 8062BB74  2C 03 00 00 */	cmpwi r3, 0
/* 8062BB78  40 82 00 0C */	bne lbl_8062BB84
/* 8062BB7C  38 00 00 00 */	li r0, 0
/* 8062BB80  48 00 00 10 */	b lbl_8062BB90
lbl_8062BB84:
/* 8062BB84  38 03 FF FF */	addi r0, r3, -1
/* 8062BB88  B0 04 5A 60 */	sth r0, 0x5a60(r4)
/* 8062BB8C  7C 00 07 34 */	extsh r0, r0
lbl_8062BB90:
/* 8062BB90  2C 00 00 00 */	cmpwi r0, 0
/* 8062BB94  40 82 00 10 */	bne lbl_8062BBA4
/* 8062BB98  3C 7F 00 02 */	addis r3, r31, 2
/* 8062BB9C  38 00 00 02 */	li r0, 2
/* 8062BBA0  98 03 5A 66 */	stb r0, 0x5a66(r3)
lbl_8062BBA4:
/* 8062BBA4  3C 7F 00 02 */	addis r3, r31, 2
/* 8062BBA8  88 03 5A 66 */	lbz r0, 0x5a66(r3)
/* 8062BBAC  28 00 00 03 */	cmplwi r0, 3
/* 8062BBB0  41 82 00 10 */	beq lbl_8062BBC0
/* 8062BBB4  88 03 5A 68 */	lbz r0, 0x5a68(r3)
/* 8062BBB8  28 00 00 00 */	cmplwi r0, 0
/* 8062BBBC  41 82 00 64 */	beq lbl_8062BC20
lbl_8062BBC0:
/* 8062BBC0  3C 9F 00 02 */	addis r4, r31, 2
/* 8062BBC4  80 64 5A 58 */	lwz r3, 0x5a58(r4)
/* 8062BBC8  28 03 FF 00 */	cmplwi r3, 0xff00
/* 8062BBCC  40 80 00 0C */	bge lbl_8062BBD8
/* 8062BBD0  38 03 08 80 */	addi r0, r3, 0x880
/* 8062BBD4  90 04 5A 58 */	stw r0, 0x5a58(r4)
lbl_8062BBD8:
/* 8062BBD8  3C 7F 00 02 */	addis r3, r31, 2
/* 8062BBDC  88 03 5A 69 */	lbz r0, 0x5a69(r3)
/* 8062BBE0  28 00 00 01 */	cmplwi r0, 1
/* 8062BBE4  41 82 00 0C */	beq lbl_8062BBF0
/* 8062BBE8  38 00 00 01 */	li r0, 1
/* 8062BBEC  98 03 5A 69 */	stb r0, 0x5a69(r3)
lbl_8062BBF0:
/* 8062BBF0  3C 9F 00 02 */	addis r4, r31, 2
/* 8062BBF4  80 04 5A 58 */	lwz r0, 0x5a58(r4)
/* 8062BBF8  28 00 FF 00 */	cmplwi r0, 0xff00
/* 8062BBFC  41 80 00 24 */	blt lbl_8062BC20
/* 8062BC00  88 04 5A 69 */	lbz r0, 0x5a69(r4)
/* 8062BC04  28 00 00 01 */	cmplwi r0, 1
/* 8062BC08  40 82 00 18 */	bne lbl_8062BC20
/* 8062BC0C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FF00@ha */
/* 8062BC10  38 00 00 05 */	li r0, 5
/* 8062BC14  38 63 FF 00 */	addi r3, r3, 0xFF00 /* 0x0000FF00@l */
/* 8062BC18  90 64 5A 58 */	stw r3, 0x5a58(r4)
/* 8062BC1C  98 04 5A 66 */	stb r0, 0x5a66(r4)
lbl_8062BC20:
/* 8062BC20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062BC24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062BC28  7C 08 03 A6 */	mtlr r0
/* 8062BC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062BC30  4E 80 00 20 */	blr 
