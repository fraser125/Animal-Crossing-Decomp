lbl_8048873C:
/* 8048873C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488740  7C 08 02 A6 */	mflr r0
/* 80488744  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488748  39 61 00 20 */	addi r11, r1, 0x20
/* 8048874C  4B C1 27 89 */	bl func_8009AED4
/* 80488750  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80488754  7C 9E 23 79 */	or. r30, r4, r4
/* 80488758  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8048875C  7C 7D 1B 78 */	mr r29, r3
/* 80488760  3C 65 00 02 */	addis r3, r5, 2
/* 80488764  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 80488768  41 82 00 48 */	beq lbl_804887B0
/* 8048876C  7F E3 FB 78 */	mr r3, r31
/* 80488770  38 A0 00 07 */	li r5, 7
/* 80488774  4B F4 36 05 */	bl mNpc_GetAnimalMemoryIdx
/* 80488778  2C 03 FF FF */	cmpwi r3, -1
/* 8048877C  40 82 00 34 */	bne lbl_804887B0
/* 80488780  7F A3 EB 78 */	mr r3, r29
/* 80488784  7F C4 F3 78 */	mr r4, r30
/* 80488788  38 A0 00 07 */	li r5, 7
/* 8048878C  4B F4 33 3D */	bl mNpc_ForceGetFreeAnimalMemoryIdx
/* 80488790  2C 03 FF FF */	cmpwi r3, -1
/* 80488794  41 82 00 1C */	beq lbl_804887B0
/* 80488798  1C 03 01 38 */	mulli r0, r3, 0x138
/* 8048879C  7F E3 FB 78 */	mr r3, r31
/* 804887A0  7F A4 EB 78 */	mr r4, r29
/* 804887A4  7F DE 02 14 */	add r30, r30, r0
/* 804887A8  7F C5 F3 78 */	mr r5, r30
/* 804887AC  4B F4 35 79 */	bl mNpc_SetAnimalMemory
lbl_804887B0:
/* 804887B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804887B4  4B C1 27 6D */	bl func_8009AF20
/* 804887B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804887BC  7C 08 03 A6 */	mtlr r0
/* 804887C0  38 21 00 20 */	addi r1, r1, 0x20
/* 804887C4  4E 80 00 20 */	blr 
