lbl_8048CE80:
/* 8048CE80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CE84  7C 08 02 A6 */	mflr r0
/* 8048CE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CE8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048CE90  7C 7F 1B 78 */	mr r31, r3
/* 8048CE94  A0 03 01 C4 */	lhz r0, 0x1c4(r3)
/* 8048CE98  28 00 00 00 */	cmplwi r0, 0
/* 8048CE9C  41 82 00 50 */	beq lbl_8048CEEC
/* 8048CEA0  38 60 00 04 */	li r3, 4
/* 8048CEA4  38 00 00 17 */	li r0, 0x17
/* 8048CEA8  90 7F 01 B0 */	stw r3, 0x1b0(r31)
/* 8048CEAC  38 80 00 02 */	li r4, 2
/* 8048CEB0  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048CEB4  A0 7F 01 C4 */	lhz r3, 0x1c4(r31)
/* 8048CEB8  4B F5 67 E9 */	bl mQst_SetItemNameFreeStr
/* 8048CEBC  A0 9F 01 E0 */	lhz r4, 0x1e0(r31)
/* 8048CEC0  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 8048CEC4  2C 00 00 02 */	cmpwi r0, 2
/* 8048CEC8  40 82 00 54 */	bne lbl_8048CF1C
/* 8048CECC  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 8048CED0  2C 00 00 04 */	cmpwi r0, 4
/* 8048CED4  40 82 00 48 */	bne lbl_8048CF1C
/* 8048CED8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048CEDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048CEE0  3C 63 00 02 */	addis r3, r3, 2
/* 8048CEE4  B0 83 66 68 */	sth r4, 0x6668(r3)
/* 8048CEE8  48 00 00 34 */	b lbl_8048CF1C
lbl_8048CEEC:
/* 8048CEEC  38 00 00 0D */	li r0, 0xd
/* 8048CEF0  38 60 04 AB */	li r3, 0x4ab
/* 8048CEF4  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048CEF8  38 00 00 18 */	li r0, 0x18
/* 8048CEFC  90 7F 01 AC */	stw r3, 0x1ac(r31)
/* 8048CF00  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048CF04  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8048CF08  80 63 00 00 */	lwz r3, 0(r3)
/* 8048CF0C  28 03 00 00 */	cmplwi r3, 0
/* 8048CF10  41 82 00 0C */	beq lbl_8048CF1C
/* 8048CF14  38 80 FF FF */	li r4, -1
/* 8048CF18  4B F3 E9 15 */	bl mNpc_AddFriendship
lbl_8048CF1C:
/* 8048CF1C  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048CF20  7F E3 FB 78 */	mr r3, r31
/* 8048CF24  38 80 00 02 */	li r4, 2
/* 8048CF28  7D 89 03 A6 */	mtctr r12
/* 8048CF2C  4E 80 04 21 */	bctrl 
/* 8048CF30  4B F3 27 79 */	bl func_803BF6A8
/* 8048CF34  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048CF38  4B F3 3A 61 */	bl mMsg_ChangeMsgData
/* 8048CF3C  4B F3 27 6D */	bl func_803BF6A8
/* 8048CF40  4B F3 2C 49 */	bl mMsg_request_main_appear_wait_type1
/* 8048CF44  4B F3 27 65 */	bl func_803BF6A8
/* 8048CF48  4B F3 3E 05 */	bl mMsg_Unset_LockContinue
/* 8048CF4C  38 00 00 02 */	li r0, 2
/* 8048CF50  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048CF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CF58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048CF5C  7C 08 03 A6 */	mtlr r0
/* 8048CF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CF64  4E 80 00 20 */	blr 
