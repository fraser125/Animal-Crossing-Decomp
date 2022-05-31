lbl_8056FF08:
/* 8056FF08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056FF0C  7C 08 02 A6 */	mflr r0
/* 8056FF10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056FF14  39 61 00 20 */	addi r11, r1, 0x20
/* 8056FF18  4B B2 AF BD */	bl func_8009AED4
/* 8056FF1C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056FF20  7C 7D 1B 78 */	mr r29, r3
/* 8056FF24  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056FF28  7C 9E 23 78 */	mr r30, r4
/* 8056FF2C  3F E5 00 02 */	addis r31, r5, 2
/* 8056FF30  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8056FF34  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8056FF38  7D 89 03 A6 */	mtctr r12
/* 8056FF3C  4E 80 04 21 */	bctrl 
/* 8056FF40  2C 03 00 01 */	cmpwi r3, 1
/* 8056FF44  40 82 00 90 */	bne lbl_8056FFD4
/* 8056FF48  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D01B@ha */
/* 8056FF4C  A0 9D 00 06 */	lhz r4, 6(r29)
/* 8056FF50  38 03 D0 1B */	addi r0, r3, 0xD01B /* 0x0000D01B@l */
/* 8056FF54  38 A0 00 00 */	li r5, 0
/* 8056FF58  7C 04 00 00 */	cmpw r4, r0
/* 8056FF5C  41 82 00 3C */	beq lbl_8056FF98
/* 8056FF60  40 80 00 18 */	bge lbl_8056FF78
/* 8056FF64  38 03 D0 19 */	addi r0, r3, -12263
/* 8056FF68  7C 04 00 00 */	cmpw r4, r0
/* 8056FF6C  41 82 00 1C */	beq lbl_8056FF88
/* 8056FF70  40 80 00 20 */	bge lbl_8056FF90
/* 8056FF74  48 00 00 30 */	b lbl_8056FFA4
lbl_8056FF78:
/* 8056FF78  38 03 D0 1D */	addi r0, r3, -12259
/* 8056FF7C  7C 04 00 00 */	cmpw r4, r0
/* 8056FF80  40 80 00 24 */	bge lbl_8056FFA4
/* 8056FF84  48 00 00 1C */	b lbl_8056FFA0
lbl_8056FF88:
/* 8056FF88  38 A0 00 00 */	li r5, 0
/* 8056FF8C  48 00 00 18 */	b lbl_8056FFA4
lbl_8056FF90:
/* 8056FF90  38 A0 00 01 */	li r5, 1
/* 8056FF94  48 00 00 10 */	b lbl_8056FFA4
lbl_8056FF98:
/* 8056FF98  38 A0 00 02 */	li r5, 2
/* 8056FF9C  48 00 00 08 */	b lbl_8056FFA4
lbl_8056FFA0:
/* 8056FFA0  38 A0 00 03 */	li r5, 3
lbl_8056FFA4:
/* 8056FFA4  3C 60 80 57 */	lis r3, aNRG2_schedule_proc@ha /* 0x80571F34@ha */
/* 8056FFA8  98 BD 07 44 */	stb r5, 0x744(r29)
/* 8056FFAC  38 03 1F 34 */	addi r0, r3, aNRG2_schedule_proc@l /* 0x80571F34@l */
/* 8056FFB0  7F C4 F3 78 */	mr r4, r30
/* 8056FFB4  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8056FFB8  3C 60 80 6C */	lis r3, ct_data@ha /* 0x806BEF4C@ha */
/* 8056FFBC  38 A3 EF 4C */	addi r5, r3, ct_data@l /* 0x806BEF4C@l */
/* 8056FFC0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8056FFC4  7F A3 EB 78 */	mr r3, r29
/* 8056FFC8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8056FFCC  7D 89 03 A6 */	mtctr r12
/* 8056FFD0  4E 80 04 21 */	bctrl 
lbl_8056FFD4:
/* 8056FFD4  39 61 00 20 */	addi r11, r1, 0x20
/* 8056FFD8  4B B2 AF 49 */	bl func_8009AF20
/* 8056FFDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056FFE0  7C 08 03 A6 */	mtlr r0
/* 8056FFE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8056FFE8  4E 80 00 20 */	blr 
