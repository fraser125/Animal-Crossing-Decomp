lbl_8048AB10:
/* 8048AB10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048AB14  7C 08 02 A6 */	mflr r0
/* 8048AB18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048AB1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8048AB20  4B C1 03 B5 */	bl func_8009AED4
/* 8048AB24  7C 7D 1B 78 */	mr r29, r3
/* 8048AB28  7C 9E 23 78 */	mr r30, r4
/* 8048AB2C  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8048AB30  7F A4 EB 78 */	mr r4, r29
/* 8048AB34  7F E3 FB 78 */	mr r3, r31
/* 8048AB38  4B F5 7F 1D */	bl mQst_CopyQuestInfo
/* 8048AB3C  7F C4 F3 78 */	mr r4, r30
/* 8048AB40  38 7F 00 1A */	addi r3, r31, 0x1a
/* 8048AB44  4B F4 08 CD */	bl mNpc_CopyAnimalPersonalID
/* 8048AB48  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 8048AB4C  38 7F 00 0C */	addi r3, r31, 0xc
/* 8048AB50  4B F4 08 C1 */	bl mNpc_CopyAnimalPersonalID
/* 8048AB54  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8048AB58  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8048AB5C  90 7F 00 02 */	stw r3, 2(r31)
/* 8048AB60  90 1F 00 06 */	stw r0, 6(r31)
/* 8048AB64  39 61 00 20 */	addi r11, r1, 0x20
/* 8048AB68  4B C1 03 B9 */	bl func_8009AF20
/* 8048AB6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048AB70  7C 08 03 A6 */	mtlr r0
/* 8048AB74  38 21 00 20 */	addi r1, r1, 0x20
/* 8048AB78  4E 80 00 20 */	blr 
