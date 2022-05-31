lbl_803C86BC:
/* 803C86BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C86C0  7C 08 02 A6 */	mflr r0
/* 803C86C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C86C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C86CC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C86D0  38 61 00 08 */	addi r3, r1, 8
/* 803C86D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C86D8  3F E4 00 02 */	addis r31, r4, 2
/* 803C86DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C86E0  7F FE FB 78 */	mr r30, r31
/* 803C86E4  3B FF 13 1C */	addi r31, r31, 0x131c
/* 803C86E8  7F E4 FB 78 */	mr r4, r31
/* 803C86EC  3B DE 61 20 */	addi r30, r30, 0x6120
/* 803C86F0  4B FF F8 B9 */	bl func_803C7FA8
/* 803C86F4  3C 80 80 66 */	lis r4, data_8065A2F8@ha /* 0x8065A2F8@ha */
/* 803C86F8  38 61 00 08 */	addi r3, r1, 8
/* 803C86FC  38 84 A2 F8 */	addi r4, r4, data_8065A2F8@l /* 0x8065A2F8@l */
/* 803C8700  38 A0 00 7F */	li r5, 0x7f
/* 803C8704  48 03 E1 35 */	bl lbRTC_IsEqualTime
/* 803C8708  2C 03 00 01 */	cmpwi r3, 1
/* 803C870C  40 82 00 10 */	bne lbl_803C871C
/* 803C8710  7F C4 F3 78 */	mr r4, r30
/* 803C8714  38 61 00 08 */	addi r3, r1, 8
/* 803C8718  48 03 EB 1D */	bl lbRTC_TimeCopy
lbl_803C871C:
/* 803C871C  7F C3 F3 78 */	mr r3, r30
/* 803C8720  38 81 00 08 */	addi r4, r1, 8
/* 803C8724  4B FF F9 F5 */	bl mMsr_GetFirstClearMushroomNum
/* 803C8728  2C 03 00 00 */	cmpwi r3, 0
/* 803C872C  40 81 00 10 */	ble lbl_803C873C
/* 803C8730  38 80 00 00 */	li r4, 0
/* 803C8734  38 A0 00 00 */	li r5, 0
/* 803C8738  4B FF FD 99 */	bl mMsr_ClearMushrooms
lbl_803C873C:
/* 803C873C  7F C4 F3 78 */	mr r4, r30
/* 803C8740  38 61 00 08 */	addi r3, r1, 8
/* 803C8744  38 A0 00 70 */	li r5, 0x70
/* 803C8748  48 03 E0 F1 */	bl lbRTC_IsEqualTime
/* 803C874C  2C 03 00 00 */	cmpwi r3, 0
/* 803C8750  40 82 00 14 */	bne lbl_803C8764
/* 803C8754  88 1F 00 04 */	lbz r0, 4(r31)
/* 803C8758  38 60 00 01 */	li r3, 1
/* 803C875C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 803C8760  98 1F 00 04 */	stb r0, 4(r31)
lbl_803C8764:
/* 803C8764  7F E3 FB 78 */	mr r3, r31
/* 803C8768  7F C4 F3 78 */	mr r4, r30
/* 803C876C  4B FF F8 C1 */	bl mMsr_Rtc2MushTime
/* 803C8770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C8774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C8778  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C877C  7C 08 03 A6 */	mtlr r0
/* 803C8780  38 21 00 20 */	addi r1, r1, 0x20
/* 803C8784  4E 80 00 20 */	blr 
