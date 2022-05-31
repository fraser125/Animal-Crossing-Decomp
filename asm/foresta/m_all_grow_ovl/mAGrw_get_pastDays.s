lbl_8050FF34:
/* 8050FF34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050FF38  7C 08 02 A6 */	mflr r0
/* 8050FF3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050FF40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050FF44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8050FF48  7C 7E 1B 78 */	mr r30, r3
/* 8050FF4C  38 61 00 08 */	addi r3, r1, 8
/* 8050FF50  4B EF 72 E5 */	bl lbRTC_TimeCopy
/* 8050FF54  3B E0 00 00 */	li r31, 0
lbl_8050FF58:
/* 8050FF58  7F C3 F3 78 */	mr r3, r30
/* 8050FF5C  38 81 00 08 */	addi r4, r1, 8
/* 8050FF60  4B EF 69 B5 */	bl lbRTC_IsOverTime
/* 8050FF64  2C 03 00 01 */	cmpwi r3, 1
/* 8050FF68  41 82 00 1C */	beq lbl_8050FF84
/* 8050FF6C  38 61 00 08 */	addi r3, r1, 8
/* 8050FF70  38 80 00 01 */	li r4, 1
/* 8050FF74  4B EF 6D B1 */	bl lbRTC_Add_DD
/* 8050FF78  3B FF 00 01 */	addi r31, r31, 1
/* 8050FF7C  2C 1F 00 05 */	cmpwi r31, 5
/* 8050FF80  40 81 FF D8 */	ble lbl_8050FF58
lbl_8050FF84:
/* 8050FF84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050FF88  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8050FF8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050FF90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8050FF94  7C 08 03 A6 */	mtlr r0
/* 8050FF98  38 21 00 20 */	addi r1, r1, 0x20
/* 8050FF9C  4E 80 00 20 */	blr 
