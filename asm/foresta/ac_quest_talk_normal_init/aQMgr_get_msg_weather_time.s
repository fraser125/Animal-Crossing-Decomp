lbl_804927C0:
/* 804927C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804927C4  7C 08 02 A6 */	mflr r0
/* 804927C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804927CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804927D0  4B C0 87 01 */	bl func_8009AED0
/* 804927D4  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 804927D8  81 83 09 54 */	lwz r12, 0x954(r3)
/* 804927DC  39 08 85 38 */	addi r8, r8, common_data@l /* 0x81138538@l */
/* 804927E0  7C 9C 23 78 */	mr r28, r4
/* 804927E4  3C 68 00 02 */	addis r3, r8, 2
/* 804927E8  7C BD 2B 78 */	mr r29, r5
/* 804927EC  7C DE 33 78 */	mr r30, r6
/* 804927F0  7C FF 3B 78 */	mr r31, r7
/* 804927F4  88 63 61 22 */	lbz r3, 0x6122(r3)
/* 804927F8  7D 89 03 A6 */	mtctr r12
/* 804927FC  4E 80 04 21 */	bctrl 
/* 80492800  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80492804  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80492808  3C 84 00 02 */	addis r4, r4, 2
/* 8049280C  A8 04 66 6C */	lha r0, 0x666c(r4)
/* 80492810  2C 00 00 03 */	cmpwi r0, 3
/* 80492814  40 82 00 08 */	bne lbl_8049281C
/* 80492818  38 00 00 00 */	li r0, 0
lbl_8049281C:
/* 8049281C  7C 83 E9 D6 */	mullw r4, r3, r29
/* 80492820  7F E3 FB 78 */	mr r3, r31
/* 80492824  7C 00 F1 D6 */	mullw r0, r0, r30
/* 80492828  7F FC 22 14 */	add r31, r28, r4
/* 8049282C  7F FF 02 14 */	add r31, r31, r0
/* 80492830  4B F5 1B A1 */	bl mQst_GetRandom
/* 80492834  7F FF 1A 14 */	add r31, r31, r3
/* 80492838  39 61 00 20 */	addi r11, r1, 0x20
/* 8049283C  7F E3 FB 78 */	mr r3, r31
/* 80492840  4B C0 86 DD */	bl func_8009AF1C
/* 80492844  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80492848  7C 08 03 A6 */	mtlr r0
/* 8049284C  38 21 00 20 */	addi r1, r1, 0x20
/* 80492850  4E 80 00 20 */	blr 