lbl_803F7C68:
/* 803F7C68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F7C6C  7C 08 02 A6 */	mflr r0
/* 803F7C70  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F7C74  39 61 00 20 */	addi r11, r1, 0x20
/* 803F7C78  4B CA 32 59 */	bl func_8009AED0
/* 803F7C7C  7C BF 2B 78 */	mr r31, r5
/* 803F7C80  7C 7C 1B 78 */	mr r28, r3
/* 803F7C84  7C DD 33 78 */	mr r29, r6
/* 803F7C88  3B C0 00 00 */	li r30, 0
/* 803F7C8C  7F E3 FB 78 */	mr r3, r31
/* 803F7C90  4B C9 65 D9 */	bl CARDGetResultCode
/* 803F7C94  90 7D 00 00 */	stw r3, 0(r29)
/* 803F7C98  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F7C9C  2C 00 00 00 */	cmpwi r0, 0
/* 803F7CA0  41 82 00 0C */	beq lbl_803F7CAC
/* 803F7CA4  2C 00 FF FA */	cmpwi r0, -6
/* 803F7CA8  40 82 00 5C */	bne lbl_803F7D04
lbl_803F7CAC:
/* 803F7CAC  7F E3 FB 78 */	mr r3, r31
/* 803F7CB0  4B C9 80 C9 */	bl CARDCheck
/* 803F7CB4  90 7D 00 00 */	stw r3, 0(r29)
/* 803F7CB8  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F7CBC  2C 00 00 00 */	cmpwi r0, 0
/* 803F7CC0  40 82 00 34 */	bne lbl_803F7CF4
/* 803F7CC4  7F E3 FB 78 */	mr r3, r31
/* 803F7CC8  7F 84 E3 78 */	mr r4, r28
/* 803F7CCC  38 A1 00 08 */	addi r5, r1, 8
/* 803F7CD0  4B C9 65 C9 */	bl CARDFreeBlocks
/* 803F7CD4  90 7D 00 00 */	stw r3, 0(r29)
/* 803F7CD8  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F7CDC  2C 00 00 00 */	cmpwi r0, 0
/* 803F7CE0  40 82 00 0C */	bne lbl_803F7CEC
/* 803F7CE4  3B C0 00 01 */	li r30, 1
/* 803F7CE8  48 00 00 10 */	b lbl_803F7CF8
lbl_803F7CEC:
/* 803F7CEC  3B C0 FF FF */	li r30, -1
/* 803F7CF0  48 00 00 08 */	b lbl_803F7CF8
lbl_803F7CF4:
/* 803F7CF4  3B C0 FF FF */	li r30, -1
lbl_803F7CF8:
/* 803F7CF8  7F E3 FB 78 */	mr r3, r31
/* 803F7CFC  4B C9 8A E5 */	bl CARDUnmount
/* 803F7D00  48 00 00 20 */	b lbl_803F7D20
lbl_803F7D04:
/* 803F7D04  2C 00 FF FF */	cmpwi r0, -1
/* 803F7D08  41 82 00 18 */	beq lbl_803F7D20
/* 803F7D0C  2C 00 FF F3 */	cmpwi r0, -13
/* 803F7D10  40 82 00 0C */	bne lbl_803F7D1C
/* 803F7D14  7F E3 FB 78 */	mr r3, r31
/* 803F7D18  4B C9 8A C9 */	bl CARDUnmount
lbl_803F7D1C:
/* 803F7D1C  3B C0 FF FF */	li r30, -1
lbl_803F7D20:
/* 803F7D20  7F C3 F3 78 */	mr r3, r30
/* 803F7D24  39 61 00 20 */	addi r11, r1, 0x20
/* 803F7D28  4B CA 31 F5 */	bl func_8009AF1C
/* 803F7D2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F7D30  7C 08 03 A6 */	mtlr r0
/* 803F7D34  38 21 00 20 */	addi r1, r1, 0x20
/* 803F7D38  4E 80 00 20 */	blr 
