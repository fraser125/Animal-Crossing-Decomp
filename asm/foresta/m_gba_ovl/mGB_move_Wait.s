lbl_805DC78C:
/* 805DC78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC790  7C 08 02 A6 */	mflr r0
/* 805DC794  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC79C  7C 9F 23 78 */	mr r31, r4
/* 805DC7A0  93 C1 00 08 */	stw r30, 8(r1)
/* 805DC7A4  7C 7E 1B 78 */	mr r30, r3
/* 805DC7A8  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805DC7AC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC7B0  1C 80 00 48 */	mulli r4, r0, 0x48
/* 805DC7B4  38 84 00 54 */	addi r4, r4, 0x54
/* 805DC7B8  7C 85 22 14 */	add r4, r5, r4
/* 805DC7BC  80 04 00 04 */	lwz r0, 4(r4)
/* 805DC7C0  2C 00 00 00 */	cmpwi r0, 0
/* 805DC7C4  40 82 00 7C */	bne lbl_805DC840
/* 805DC7C8  80 04 00 30 */	lwz r0, 0x30(r4)
/* 805DC7CC  2C 00 00 04 */	cmpwi r0, 4
/* 805DC7D0  40 82 00 70 */	bne lbl_805DC840
/* 805DC7D4  80 04 00 00 */	lwz r0, 0(r4)
/* 805DC7D8  2C 00 00 0F */	cmpwi r0, 0xf
/* 805DC7DC  40 82 00 64 */	bne lbl_805DC840
/* 805DC7E0  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 805DC7E4  2C 00 00 00 */	cmpwi r0, 0
/* 805DC7E8  40 82 00 24 */	bne lbl_805DC80C
/* 805DC7EC  48 00 D4 89 */	bl mNW_next_data
/* 805DC7F0  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805DC7F4  7F E3 FB 78 */	mr r3, r31
/* 805DC7F8  38 80 00 02 */	li r4, 2
/* 805DC7FC  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805DC800  7D 89 03 A6 */	mtctr r12
/* 805DC804  4E 80 04 21 */	bctrl 
/* 805DC808  48 00 00 38 */	b lbl_805DC840
lbl_805DC80C:
/* 805DC80C  2C 00 00 01 */	cmpwi r0, 1
/* 805DC810  40 82 00 10 */	bne lbl_805DC820
/* 805DC814  38 00 00 01 */	li r0, 1
/* 805DC818  90 1F 00 04 */	stw r0, 4(r31)
/* 805DC81C  48 00 00 24 */	b lbl_805DC840
lbl_805DC820:
/* 805DC820  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805DC824  7F E3 FB 78 */	mr r3, r31
/* 805DC828  38 80 00 02 */	li r4, 2
/* 805DC82C  7D 89 03 A6 */	mtctr r12
/* 805DC830  4E 80 04 21 */	bctrl 
/* 805DC834  3C 60 81 21 */	lis r3, gb_ovl_change_flg@ha /* 0x81211738@ha */
/* 805DC838  38 00 00 00 */	li r0, 0
/* 805DC83C  98 03 17 38 */	stb r0, gb_ovl_change_flg@l(r3)  /* 0x81211738@l */
lbl_805DC840:
/* 805DC840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC848  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DC84C  7C 08 03 A6 */	mtlr r0
/* 805DC850  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC854  4E 80 00 20 */	blr 
