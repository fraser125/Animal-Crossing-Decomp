lbl_80583418:
/* 80583418  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058341C  7C 08 02 A6 */	mflr r0
/* 80583420  90 01 00 24 */	stw r0, 0x24(r1)
/* 80583424  39 61 00 20 */	addi r11, r1, 0x20
/* 80583428  4B B1 7A A9 */	bl func_8009AED0
/* 8058342C  7C 7C 1B 78 */	mr r28, r3
/* 80583430  7C 9D 23 78 */	mr r29, r4
/* 80583434  80 03 08 84 */	lwz r0, 0x884(r3)
/* 80583438  28 00 00 00 */	cmplwi r0, 0
/* 8058343C  40 82 00 54 */	bne lbl_80583490
/* 80583440  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80583444  7F 86 E3 78 */	mr r6, r28
/* 80583448  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8058344C  38 60 22 44 */	li r3, 0x2244
/* 80583450  3F C4 00 02 */	addis r30, r4, 2
/* 80583454  38 80 00 07 */	li r4, 7
/* 80583458  80 FE 60 94 */	lwz r7, 0x6094(r30)
/* 8058345C  38 A0 00 01 */	li r5, 1
/* 80583460  81 87 00 00 */	lwz r12, 0(r7)
/* 80583464  7D 89 03 A6 */	mtctr r12
/* 80583468  4E 80 04 21 */	bctrl 
/* 8058346C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80583470  41 82 00 20 */	beq lbl_80583490
/* 80583474  80 BE 60 94 */	lwz r5, 0x6094(r30)
/* 80583478  7F 83 E3 78 */	mr r3, r28
/* 8058347C  38 80 00 01 */	li r4, 1
/* 80583480  81 85 00 08 */	lwz r12, 8(r5)
/* 80583484  7D 89 03 A6 */	mtctr r12
/* 80583488  4E 80 04 21 */	bctrl 
/* 8058348C  93 FC 08 84 */	stw r31, 0x884(r28)
lbl_80583490:
/* 80583490  80 1C 01 98 */	lwz r0, 0x198(r28)
/* 80583494  2C 00 00 01 */	cmpwi r0, 1
/* 80583498  40 82 00 44 */	bne lbl_805834DC
/* 8058349C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805834A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805834A4  3C 63 00 02 */	addis r3, r3, 2
/* 805834A8  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 805834AC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805834B0  7C 00 E0 40 */	cmplw r0, r28
/* 805834B4  40 82 00 28 */	bne lbl_805834DC
/* 805834B8  81 83 00 08 */	lwz r12, 8(r3)
/* 805834BC  7F 83 E3 78 */	mr r3, r28
/* 805834C0  38 80 00 02 */	li r4, 2
/* 805834C4  7D 89 03 A6 */	mtctr r12
/* 805834C8  4E 80 04 21 */	bctrl 
/* 805834CC  7F 83 E3 78 */	mr r3, r28
/* 805834D0  7F A4 EB 78 */	mr r4, r29
/* 805834D4  38 A0 00 0A */	li r5, 0xa
/* 805834D8  48 00 2A E9 */	bl aNSC_setupAction
lbl_805834DC:
/* 805834DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805834E0  4B B1 7A 3D */	bl func_8009AF1C
/* 805834E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805834E8  7C 08 03 A6 */	mtlr r0
/* 805834EC  38 21 00 20 */	addi r1, r1, 0x20
/* 805834F0  4E 80 00 20 */	blr 