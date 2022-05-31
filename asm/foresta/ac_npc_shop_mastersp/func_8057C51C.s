lbl_8057C51C:
/* 8057C51C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057C520  7C 08 02 A6 */	mflr r0
/* 8057C524  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057C528  39 61 00 20 */	addi r11, r1, 0x20
/* 8057C52C  4B B1 E9 A9 */	bl func_8009AED4
/* 8057C530  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057C534  7C 7D 1B 78 */	mr r29, r3
/* 8057C538  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057C53C  7C 9E 23 78 */	mr r30, r4
/* 8057C540  3F E5 00 02 */	addis r31, r5, 2
/* 8057C544  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8057C548  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8057C54C  7D 89 03 A6 */	mtctr r12
/* 8057C550  4E 80 04 21 */	bctrl 
/* 8057C554  2C 03 00 01 */	cmpwi r3, 1
/* 8057C558  40 82 00 44 */	bne lbl_8057C59C
/* 8057C55C  3C 60 80 58 */	lis r3, aSHM_schedule_proc@ha /* 0x8057E39C@ha */
/* 8057C560  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C06AC@ha */
/* 8057C564  38 03 E3 9C */	addi r0, r3, aSHM_schedule_proc@l /* 0x8057E39C@l */
/* 8057C568  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8057C56C  38 A4 06 AC */	addi r5, r4, ct_data@l /* 0x806C06AC@l */
/* 8057C570  7F A3 EB 78 */	mr r3, r29
/* 8057C574  7F C4 F3 78 */	mr r4, r30
/* 8057C578  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8057C57C  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8057C580  7D 89 03 A6 */	mtctr r12
/* 8057C584  4E 80 04 21 */	bctrl 
/* 8057C588  7F A3 EB 78 */	mr r3, r29
/* 8057C58C  7F C4 F3 78 */	mr r4, r30
/* 8057C590  48 00 01 51 */	bl aSHM_set_base_position
/* 8057C594  38 00 00 00 */	li r0, 0
/* 8057C598  90 1D 09 C4 */	stw r0, 0x9c4(r29)
lbl_8057C59C:
/* 8057C59C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057C5A0  4B B1 E9 81 */	bl func_8009AF20
/* 8057C5A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057C5A8  7C 08 03 A6 */	mtlr r0
/* 8057C5AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8057C5B0  4E 80 00 20 */	blr 
