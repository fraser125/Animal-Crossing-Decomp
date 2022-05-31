lbl_80538110:
/* 80538110  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80538114  7C 08 02 A6 */	mflr r0
/* 80538118  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053811C  39 61 00 20 */	addi r11, r1, 0x20
/* 80538120  4B B6 2D B5 */	bl func_8009AED4
/* 80538124  7C 7D 1B 78 */	mr r29, r3
/* 80538128  7C 9E 23 78 */	mr r30, r4
/* 8053812C  8B E3 07 DC */	lbz r31, 0x7dc(r3)
/* 80538130  2C 1F 00 FF */	cmpwi r31, 0xff
/* 80538134  41 82 00 68 */	beq lbl_8053819C
/* 80538138  80 7D 01 7C */	lwz r3, 0x17c(r29)
/* 8053813C  28 03 00 00 */	cmplwi r3, 0
/* 80538140  41 82 00 38 */	beq lbl_80538178
/* 80538144  4B E9 DB B9 */	bl mNpc_CheckIslandAnimal
/* 80538148  2C 03 00 01 */	cmpwi r3, 1
/* 8053814C  40 82 00 2C */	bne lbl_80538178
/* 80538150  3C 60 80 6A */	lis r3, aNPC_island_sche_proc@ha /* 0x806A29FC@ha */
/* 80538154  57 E0 10 3A */	slwi r0, r31, 2
/* 80538158  38 83 29 FC */	addi r4, r3, aNPC_island_sche_proc@l /* 0x806A29FC@l */
/* 8053815C  7F A3 EB 78 */	mr r3, r29
/* 80538160  7D 84 00 2E */	lwzx r12, r4, r0
/* 80538164  7F C4 F3 78 */	mr r4, r30
/* 80538168  38 A0 00 01 */	li r5, 1
/* 8053816C  7D 89 03 A6 */	mtctr r12
/* 80538170  4E 80 04 21 */	bctrl 
/* 80538174  48 00 00 28 */	b lbl_8053819C
lbl_80538178:
/* 80538178  3C 60 80 6A */	lis r3, aNPC_sche_proc@ha /* 0x806A29E0@ha */
/* 8053817C  57 E0 10 3A */	slwi r0, r31, 2
/* 80538180  38 83 29 E0 */	addi r4, r3, aNPC_sche_proc@l /* 0x806A29E0@l */
/* 80538184  7F A3 EB 78 */	mr r3, r29
/* 80538188  7D 84 00 2E */	lwzx r12, r4, r0
/* 8053818C  7F C4 F3 78 */	mr r4, r30
/* 80538190  38 A0 00 01 */	li r5, 1
/* 80538194  7D 89 03 A6 */	mtctr r12
/* 80538198  4E 80 04 21 */	bctrl 
lbl_8053819C:
/* 8053819C  39 61 00 20 */	addi r11, r1, 0x20
/* 805381A0  4B B6 2D 81 */	bl func_8009AF20
/* 805381A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805381A8  7C 08 03 A6 */	mtlr r0
/* 805381AC  38 21 00 20 */	addi r1, r1, 0x20
/* 805381B0  4E 80 00 20 */	blr 
