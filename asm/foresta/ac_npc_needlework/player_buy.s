lbl_80564BF8:
/* 80564BF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80564BFC  7C 08 02 A6 */	mflr r0
/* 80564C00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80564C04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80564C08  7C 7F 1B 78 */	mr r31, r3
/* 80564C0C  7C 83 23 78 */	mr r3, r4
/* 80564C10  4B E7 4A 31 */	bl get_player_actor_withoutCheck
/* 80564C14  88 9F 09 AD */	lbz r4, 0x9ad(r31)
/* 80564C18  28 04 00 00 */	cmplwi r4, 0
/* 80564C1C  41 82 00 14 */	beq lbl_80564C30
/* 80564C20  38 04 FF FF */	addi r0, r4, -1
/* 80564C24  38 60 00 00 */	li r3, 0
/* 80564C28  98 1F 09 AD */	stb r0, 0x9ad(r31)
/* 80564C2C  48 00 00 A4 */	b lbl_80564CD0
lbl_80564C30:
/* 80564C30  28 03 00 00 */	cmplwi r3, 0
/* 80564C34  41 82 00 98 */	beq lbl_80564CCC
/* 80564C38  80 03 13 8C */	lwz r0, 0x138c(r3)
/* 80564C3C  2C 00 00 01 */	cmpwi r0, 1
/* 80564C40  40 82 00 8C */	bne lbl_80564CCC
/* 80564C44  80 C3 13 98 */	lwz r6, 0x1398(r3)
/* 80564C48  38 81 00 08 */	addi r4, r1, 8
/* 80564C4C  80 03 13 9C */	lwz r0, 0x139c(r3)
/* 80564C50  38 A1 00 10 */	addi r5, r1, 0x10
/* 80564C54  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80564C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80564C5C  80 03 13 A0 */	lwz r0, 0x13a0(r3)
/* 80564C60  38 61 00 0C */	addi r3, r1, 0xc
/* 80564C64  90 01 00 18 */	stw r0, 0x18(r1)
/* 80564C68  4B E4 07 01 */	bl mFI_Wpos2UtNum
/* 80564C6C  3C 80 80 6C */	lis r4, table_ux@ha /* 0x806BE1AC@ha */
/* 80564C70  3C 60 80 6C */	lis r3, table_uz@ha /* 0x806BE1CC@ha */
/* 80564C74  38 00 00 08 */	li r0, 8
/* 80564C78  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80564C7C  38 A4 E1 AC */	addi r5, r4, table_ux@l /* 0x806BE1AC@l */
/* 80564C80  38 83 E1 CC */	addi r4, r3, table_uz@l /* 0x806BE1CC@l */
/* 80564C84  80 E1 00 08 */	lwz r7, 8(r1)
/* 80564C88  39 00 00 00 */	li r8, 0
/* 80564C8C  38 60 00 00 */	li r3, 0
/* 80564C90  7C 09 03 A6 */	mtctr r0
lbl_80564C94:
/* 80564C94  7C 05 18 2E */	lwzx r0, r5, r3
/* 80564C98  7C 06 00 00 */	cmpw r6, r0
/* 80564C9C  40 82 00 24 */	bne lbl_80564CC0
/* 80564CA0  7C 04 18 2E */	lwzx r0, r4, r3
/* 80564CA4  7C 07 00 00 */	cmpw r7, r0
/* 80564CA8  40 82 00 18 */	bne lbl_80564CC0
/* 80564CAC  99 1F 09 B5 */	stb r8, 0x9b5(r31)
/* 80564CB0  38 00 00 0A */	li r0, 0xa
/* 80564CB4  38 60 00 01 */	li r3, 1
/* 80564CB8  98 1F 09 AD */	stb r0, 0x9ad(r31)
/* 80564CBC  48 00 00 14 */	b lbl_80564CD0
lbl_80564CC0:
/* 80564CC0  39 08 00 01 */	addi r8, r8, 1
/* 80564CC4  38 63 00 04 */	addi r3, r3, 4
/* 80564CC8  42 00 FF CC */	bdnz lbl_80564C94
lbl_80564CCC:
/* 80564CCC  38 60 00 00 */	li r3, 0
lbl_80564CD0:
/* 80564CD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80564CD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80564CD8  7C 08 03 A6 */	mtlr r0
/* 80564CDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80564CE0  4E 80 00 20 */	blr 
