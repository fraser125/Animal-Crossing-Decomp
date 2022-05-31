lbl_80406DEC:
/* 80406DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80406DF0  7C 08 02 A6 */	mflr r0
/* 80406DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80406DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80406DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80406E00  7C 7E 1B 78 */	mr r30, r3
/* 80406E04  8B E3 00 01 */	lbz r31, 1(r3)
/* 80406E08  7F FF 22 14 */	add r31, r31, r4
/* 80406E0C  2C 1F 00 3C */	cmpwi r31, 0x3c
/* 80406E10  41 80 00 20 */	blt lbl_80406E30
/* 80406E14  38 00 00 3C */	li r0, 0x3c
/* 80406E18  7C 9F 03 D6 */	divw r4, r31, r0
/* 80406E1C  4B FF FF 71 */	bl lbRTC_Add_hh
/* 80406E20  38 60 00 3C */	li r3, 0x3c
/* 80406E24  7C 1F 1B D6 */	divw r0, r31, r3
/* 80406E28  7C 00 19 D6 */	mullw r0, r0, r3
/* 80406E2C  7F E0 F8 50 */	subf r31, r0, r31
lbl_80406E30:
/* 80406E30  9B FE 00 01 */	stb r31, 1(r30)
/* 80406E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80406E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80406E3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80406E40  7C 08 03 A6 */	mtlr r0
/* 80406E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80406E48  4E 80 00 20 */	blr 
