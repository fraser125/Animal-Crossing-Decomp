lbl_80406CC4:
/* 80406CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80406CC8  7C 08 02 A6 */	mflr r0
/* 80406CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80406CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80406CD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80406CD8  7C 7E 1B 78 */	mr r30, r3
/* 80406CDC  8B E3 00 05 */	lbz r31, 5(r3)
/* 80406CE0  7F FF 22 14 */	add r31, r31, r4
/* 80406CE4  2C 1F 00 0C */	cmpwi r31, 0xc
/* 80406CE8  40 81 00 20 */	ble lbl_80406D08
/* 80406CEC  38 00 00 0C */	li r0, 0xc
/* 80406CF0  7C 9F 03 D6 */	divw r4, r31, r0
/* 80406CF4  4B FF FF BD */	bl lbRTC_Add_YY
/* 80406CF8  38 60 00 0C */	li r3, 0xc
/* 80406CFC  7C 1F 1B D6 */	divw r0, r31, r3
/* 80406D00  7C 00 19 D6 */	mullw r0, r0, r3
/* 80406D04  7F E0 F8 50 */	subf r31, r0, r31
lbl_80406D08:
/* 80406D08  9B FE 00 05 */	stb r31, 5(r30)
/* 80406D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80406D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80406D14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80406D18  7C 08 03 A6 */	mtlr r0
/* 80406D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80406D20  4E 80 00 20 */	blr 
