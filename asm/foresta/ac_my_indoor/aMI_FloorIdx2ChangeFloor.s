lbl_8046FF08:
/* 8046FF08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046FF0C  7C 08 02 A6 */	mflr r0
/* 8046FF10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046FF14  39 61 00 20 */	addi r11, r1, 0x20
/* 8046FF18  4B C2 AF B9 */	bl func_8009AED0
/* 8046FF1C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8046FF20  7C 7C 1B 78 */	mr r28, r3
/* 8046FF24  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8046FF28  7C 9D 23 78 */	mr r29, r4
/* 8046FF2C  3C 63 00 02 */	addis r3, r3, 2
/* 8046FF30  80 63 60 A8 */	lwz r3, 0x60a8(r3)
/* 8046FF34  83 E3 00 00 */	lwz r31, 0(r3)
/* 8046FF38  28 1F 00 00 */	cmplwi r31, 0
/* 8046FF3C  41 82 00 5C */	beq lbl_8046FF98
/* 8046FF40  A8 7F 01 74 */	lha r3, 0x174(r31)
/* 8046FF44  38 03 26 00 */	addi r0, r3, 0x2600
/* 8046FF48  54 1E 04 3E */	clrlwi r30, r0, 0x10
/* 8046FF4C  4B F3 5E 81 */	bl mFI_GetNowPlayerHouseFloorNo
/* 8046FF50  2C 03 00 02 */	cmpwi r3, 2
/* 8046FF54  41 82 00 44 */	beq lbl_8046FF98
/* 8046FF58  80 1F 01 E4 */	lwz r0, 0x1e4(r31)
/* 8046FF5C  2C 00 00 00 */	cmpwi r0, 0
/* 8046FF60  40 82 00 38 */	bne lbl_8046FF98
/* 8046FF64  38 00 00 01 */	li r0, 1
/* 8046FF68  90 1F 01 E4 */	stw r0, 0x1e4(r31)
/* 8046FF6C  93 9F 01 E8 */	stw r28, 0x1e8(r31)
/* 8046FF70  93 BF 01 EC */	stw r29, 0x1ec(r31)
/* 8046FF74  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 8046FF78  2C 00 00 57 */	cmpwi r0, 0x57
/* 8046FF7C  41 80 00 14 */	blt lbl_8046FF90
/* 8046FF80  2C 00 00 5E */	cmpwi r0, 0x5e
/* 8046FF84  41 81 00 0C */	bgt lbl_8046FF90
/* 8046FF88  38 60 00 00 */	li r3, 0
/* 8046FF8C  48 00 00 10 */	b lbl_8046FF9C
lbl_8046FF90:
/* 8046FF90  7F C3 F3 78 */	mr r3, r30
/* 8046FF94  48 00 00 08 */	b lbl_8046FF9C
lbl_8046FF98:
/* 8046FF98  38 60 00 00 */	li r3, 0
lbl_8046FF9C:
/* 8046FF9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8046FFA0  4B C2 AF 7D */	bl func_8009AF1C
/* 8046FFA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046FFA8  7C 08 03 A6 */	mtlr r0
/* 8046FFAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8046FFB0  4E 80 00 20 */	blr 
