lbl_8062EB04:
/* 8062EB04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062EB08  7C 08 02 A6 */	mflr r0
/* 8062EB0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062EB10  81 61 00 2C */	lwz r11, 0x2c(r1)
/* 8062EB14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062EB18  7D 3F 4B 78 */	mr r31, r9
/* 8062EB1C  81 81 00 28 */	lwz r12, 0x28(r1)
/* 8062EB20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8062EB24  7C 9E 23 78 */	mr r30, r4
/* 8062EB28  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8062EB2C  A8 0B 00 02 */	lha r0, 2(r11)
/* 8062EB30  2C 00 00 01 */	cmpwi r0, 1
/* 8062EB34  40 82 00 0C */	bne lbl_8062EB40
/* 8062EB38  80 0C 20 90 */	lwz r0, 0x2090(r12)
/* 8062EB3C  48 00 00 08 */	b lbl_8062EB44
lbl_8062EB40:
/* 8062EB40  80 0C 00 A0 */	lwz r0, 0xa0(r12)
lbl_8062EB44:
/* 8062EB44  7D 64 02 14 */	add r11, r4, r0
/* 8062EB48  38 80 00 00 */	li r4, 0
/* 8062EB4C  7C 0A 59 D6 */	mullw r0, r10, r11
/* 8062EB50  39 20 00 01 */	li r9, 1
/* 8062EB54  7C 00 00 D0 */	neg r0, r0
/* 8062EB58  90 01 00 08 */	stw r0, 8(r1)
/* 8062EB5C  7C 05 59 D6 */	mullw r0, r5, r11
/* 8062EB60  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8062EB64  7C 67 1B 78 */	mr r7, r3
/* 8062EB68  91 01 00 10 */	stw r8, 0x10(r1)
/* 8062EB6C  7F C8 F3 78 */	mr r8, r30
/* 8062EB70  7C C6 59 D6 */	mullw r6, r6, r11
/* 8062EB74  80 6C 00 00 */	lwz r3, 0(r12)
/* 8062EB78  7C A0 00 D0 */	neg r5, r0
/* 8062EB7C  7C 1F 59 D6 */	mullw r0, r31, r11
/* 8062EB80  7C C6 00 D0 */	neg r6, r6
/* 8062EB84  7D 40 00 D0 */	neg r10, r0
/* 8062EB88  4B DB 6A 39 */	bl two_tex_scroll_dolphin
/* 8062EB8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062EB90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062EB94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8062EB98  7C 08 03 A6 */	mtlr r0
/* 8062EB9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8062EBA0  4E 80 00 20 */	blr 
