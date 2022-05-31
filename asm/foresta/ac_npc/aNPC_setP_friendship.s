lbl_80538B18:
/* 80538B18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80538B1C  7C 08 02 A6 */	mflr r0
/* 80538B20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80538B24  39 61 00 20 */	addi r11, r1, 0x20
/* 80538B28  4B B6 23 A9 */	bl func_8009AED0
/* 80538B2C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80538B30  7C 7C 1B 78 */	mr r28, r3
/* 80538B34  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80538B38  83 FC 01 7C */	lwz r31, 0x17c(r28)
/* 80538B3C  3C 63 00 02 */	addis r3, r3, 2
/* 80538B40  3B C0 00 00 */	li r30, 0
/* 80538B44  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80538B48  38 9F 00 10 */	addi r4, r31, 0x10
/* 80538B4C  3B A0 00 00 */	li r29, 0
/* 80538B50  38 A0 00 07 */	li r5, 7
/* 80538B54  4B E9 32 25 */	bl mNpc_GetAnimalMemoryIdx
/* 80538B58  2C 03 FF FF */	cmpwi r3, -1
/* 80538B5C  41 82 00 14 */	beq lbl_80538B70
/* 80538B60  1C 63 01 38 */	mulli r3, r3, 0x138
/* 80538B64  3B A0 00 01 */	li r29, 1
/* 80538B68  3B C3 00 40 */	addi r30, r3, 0x40
/* 80538B6C  7F DF F2 14 */	add r30, r31, r30
lbl_80538B70:
/* 80538B70  93 DC 08 60 */	stw r30, 0x860(r28)
/* 80538B74  7F A3 EB 78 */	mr r3, r29
/* 80538B78  39 61 00 20 */	addi r11, r1, 0x20
/* 80538B7C  4B B6 23 A1 */	bl func_8009AF1C
/* 80538B80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80538B84  7C 08 03 A6 */	mtlr r0
/* 80538B88  38 21 00 20 */	addi r1, r1, 0x20
/* 80538B8C  4E 80 00 20 */	blr 
