lbl_80538028:
/* 80538028  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053802C  7C 08 02 A6 */	mflr r0
/* 80538030  90 01 00 24 */	stw r0, 0x24(r1)
/* 80538034  39 61 00 20 */	addi r11, r1, 0x20
/* 80538038  4B B6 2E 9D */	bl func_8009AED4
/* 8053803C  7C 7D 1B 78 */	mr r29, r3
/* 80538040  7C 9E 23 78 */	mr r30, r4
/* 80538044  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 80538048  8B FD 07 DC */	lbz r31, 0x7dc(r29)
/* 8053804C  28 03 00 00 */	cmplwi r3, 0
/* 80538050  41 82 00 38 */	beq lbl_80538088
/* 80538054  4B E9 DC A9 */	bl mNpc_CheckIslandAnimal
/* 80538058  2C 03 00 01 */	cmpwi r3, 1
/* 8053805C  40 82 00 2C */	bne lbl_80538088
/* 80538060  3C 60 80 6A */	lis r3, aNPC_island_sche_proc@ha /* 0x806A29FC@ha */
/* 80538064  57 E0 10 3A */	slwi r0, r31, 2
/* 80538068  38 83 29 FC */	addi r4, r3, aNPC_island_sche_proc@l /* 0x806A29FC@l */
/* 8053806C  7F A3 EB 78 */	mr r3, r29
/* 80538070  7D 84 00 2E */	lwzx r12, r4, r0
/* 80538074  7F C4 F3 78 */	mr r4, r30
/* 80538078  38 A0 00 00 */	li r5, 0
/* 8053807C  7D 89 03 A6 */	mtctr r12
/* 80538080  4E 80 04 21 */	bctrl 
/* 80538084  48 00 00 28 */	b lbl_805380AC
lbl_80538088:
/* 80538088  3C 60 80 6A */	lis r3, aNPC_sche_proc@ha /* 0x806A29E0@ha */
/* 8053808C  57 E0 10 3A */	slwi r0, r31, 2
/* 80538090  38 83 29 E0 */	addi r4, r3, aNPC_sche_proc@l /* 0x806A29E0@l */
/* 80538094  7F A3 EB 78 */	mr r3, r29
/* 80538098  7D 84 00 2E */	lwzx r12, r4, r0
/* 8053809C  7F C4 F3 78 */	mr r4, r30
/* 805380A0  38 A0 00 00 */	li r5, 0
/* 805380A4  7D 89 03 A6 */	mtctr r12
/* 805380A8  4E 80 04 21 */	bctrl 
lbl_805380AC:
/* 805380AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805380B0  4B B6 2E 71 */	bl func_8009AF20
/* 805380B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805380B8  7C 08 03 A6 */	mtlr r0
/* 805380BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805380C0  4E 80 00 20 */	blr 
