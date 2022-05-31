lbl_805DE258:
/* 805DE258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DE25C  7C 08 02 A6 */	mflr r0
/* 805DE260  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DE264  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE268  4B AB CC 6D */	bl func_8009AED4
/* 805DE26C  7C 7D 1B 78 */	mr r29, r3
/* 805DE270  7C 9E 23 78 */	mr r30, r4
/* 805DE274  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DE278  80 65 09 80 */	lwz r3, 0x980(r5)
/* 805DE27C  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805DE280  A0 63 02 34 */	lhz r3, 0x234(r3)
/* 805DE284  3B E5 00 08 */	addi r31, r5, 8
/* 805DE288  4B E0 4F B1 */	bl mQst_CheckPutItem
/* 805DE28C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DE290  57 C4 08 3C */	slwi r4, r30, 1
/* 805DE294  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 805DE298  7F A3 EB 78 */	mr r3, r29
/* 805DE29C  3C C5 00 02 */	addis r6, r5, 2
/* 805DE2A0  38 A4 00 68 */	addi r5, r4, 0x68
/* 805DE2A4  80 06 61 3C */	lwz r0, 0x613c(r6)
/* 805DE2A8  7F E4 FB 78 */	mr r4, r31
/* 805DE2AC  7F C6 F3 78 */	mr r6, r30
/* 805DE2B0  7C A0 2A 14 */	add r5, r0, r5
/* 805DE2B4  4B FF FC 91 */	bl mHD_drop_item2
/* 805DE2B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE2BC  4B AB CC 65 */	bl func_8009AF20
/* 805DE2C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DE2C4  7C 08 03 A6 */	mtlr r0
/* 805DE2C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805DE2CC  4E 80 00 20 */	blr 
