lbl_8057990C:
/* 8057990C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80579910  7C 08 02 A6 */	mflr r0
/* 80579914  90 01 00 24 */	stw r0, 0x24(r1)
/* 80579918  39 61 00 20 */	addi r11, r1, 0x20
/* 8057991C  4B B2 15 B5 */	bl func_8009AED0
/* 80579920  7C 7C 1B 78 */	mr r28, r3
/* 80579924  7C 9D 23 78 */	mr r29, r4
/* 80579928  80 03 08 84 */	lwz r0, 0x884(r3)
/* 8057992C  28 00 00 00 */	cmplwi r0, 0
/* 80579930  40 82 00 54 */	bne lbl_80579984
/* 80579934  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80579938  7F 86 E3 78 */	mr r6, r28
/* 8057993C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80579940  38 60 22 44 */	li r3, 0x2244
/* 80579944  3F C4 00 02 */	addis r30, r4, 2
/* 80579948  38 80 00 07 */	li r4, 7
/* 8057994C  80 FE 60 94 */	lwz r7, 0x6094(r30)
/* 80579950  38 A0 00 01 */	li r5, 1
/* 80579954  81 87 00 00 */	lwz r12, 0(r7)
/* 80579958  7D 89 03 A6 */	mtctr r12
/* 8057995C  4E 80 04 21 */	bctrl 
/* 80579960  7C 7F 1B 79 */	or. r31, r3, r3
/* 80579964  41 82 00 20 */	beq lbl_80579984
/* 80579968  80 BE 60 94 */	lwz r5, 0x6094(r30)
/* 8057996C  7F 83 E3 78 */	mr r3, r28
/* 80579970  38 80 00 01 */	li r4, 1
/* 80579974  81 85 00 08 */	lwz r12, 8(r5)
/* 80579978  7D 89 03 A6 */	mtctr r12
/* 8057997C  4E 80 04 21 */	bctrl 
/* 80579980  93 FC 08 84 */	stw r31, 0x884(r28)
lbl_80579984:
/* 80579984  80 1C 01 98 */	lwz r0, 0x198(r28)
/* 80579988  2C 00 00 01 */	cmpwi r0, 1
/* 8057998C  40 82 00 44 */	bne lbl_805799D0
/* 80579990  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80579994  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80579998  3C 63 00 02 */	addis r3, r3, 2
/* 8057999C  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 805799A0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805799A4  7C 00 E0 40 */	cmplw r0, r28
/* 805799A8  40 82 00 28 */	bne lbl_805799D0
/* 805799AC  81 83 00 08 */	lwz r12, 8(r3)
/* 805799B0  7F 83 E3 78 */	mr r3, r28
/* 805799B4  38 80 00 02 */	li r4, 2
/* 805799B8  7D 89 03 A6 */	mtctr r12
/* 805799BC  4E 80 04 21 */	bctrl 
/* 805799C0  7F 83 E3 78 */	mr r3, r28
/* 805799C4  7F A4 EB 78 */	mr r4, r29
/* 805799C8  38 A0 00 0A */	li r5, 0xa
/* 805799CC  48 00 2A E9 */	bl aNSC_setupAction
lbl_805799D0:
/* 805799D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805799D4  4B B2 15 49 */	bl func_8009AF1C
/* 805799D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805799DC  7C 08 03 A6 */	mtlr r0
/* 805799E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805799E4  4E 80 00 20 */	blr 
