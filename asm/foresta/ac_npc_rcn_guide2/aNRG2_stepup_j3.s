lbl_80570608:
/* 80570608  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057060C  7C 08 02 A6 */	mflr r0
/* 80570610  90 01 00 24 */	stw r0, 0x24(r1)
/* 80570614  39 61 00 20 */	addi r11, r1, 0x20
/* 80570618  4B B2 A8 BD */	bl func_8009AED4
/* 8057061C  4B E7 35 4D */	bl mQst_GetFirstJobData
/* 80570620  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80570624  7C 7F 1B 78 */	mr r31, r3
/* 80570628  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8057062C  3C A5 00 02 */	addis r5, r5, 2
/* 80570630  38 80 00 00 */	li r4, 0
/* 80570634  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 80570638  4B E7 00 F1 */	bl mPr_GetPossessionItemIdx
/* 8057063C  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 80570640  7C 7D 1B 78 */	mr r29, r3
/* 80570644  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80570648  54 04 FE 7E */	rlwinm r4, r0, 0x1f, 0x19, 0x1f
/* 8057064C  4B E5 C4 51 */	bl mNpc_GetOtherAnimalPersonalID
/* 80570650  3C 80 80 6C */	lis r4, ng_list@ha /* 0x806BEFE0@ha */
/* 80570654  7C 7E 1B 78 */	mr r30, r3
/* 80570658  38 C4 EF E0 */	addi r6, r4, ng_list@l /* 0x806BEFE0@l */
/* 8057065C  38 60 00 00 */	li r3, 0
/* 80570660  38 81 00 08 */	addi r4, r1, 8
/* 80570664  38 A0 00 01 */	li r5, 1
/* 80570668  38 E0 00 02 */	li r7, 2
/* 8057066C  39 00 00 00 */	li r8, 0
/* 80570670  39 20 00 08 */	li r9, 8
/* 80570674  39 40 00 00 */	li r10, 0
/* 80570678  4B E7 7D 65 */	bl mSP_SelectRandomItem_New
/* 8057067C  A0 A1 00 08 */	lhz r5, 8(r1)
/* 80570680  7F E3 FB 78 */	mr r3, r31
/* 80570684  7F C4 F3 78 */	mr r4, r30
/* 80570688  7F A6 EB 78 */	mr r6, r29
/* 8057068C  4B E7 38 89 */	bl mQst_SetFirstJobFurniture
/* 80570690  39 61 00 20 */	addi r11, r1, 0x20
/* 80570694  4B B2 A8 8D */	bl func_8009AF20
/* 80570698  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057069C  7C 08 03 A6 */	mtlr r0
/* 805706A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805706A4  4E 80 00 20 */	blr 
