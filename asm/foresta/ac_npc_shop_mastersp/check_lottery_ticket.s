lbl_8057CC60:
/* 8057CC60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057CC64  7C 08 02 A6 */	mflr r0
/* 8057CC68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057CC6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057CC70  4B B1 E2 65 */	bl func_8009AED4
/* 8057CC74  7C 7D 1B 78 */	mr r29, r3
/* 8057CC78  3B C0 00 00 */	li r30, 0
/* 8057CC7C  3B E0 00 00 */	li r31, 0
/* 8057CC80  48 00 00 18 */	b lbl_8057CC98
lbl_8057CC84:
/* 8057CC84  7F E3 FB 78 */	mr r3, r31
/* 8057CC88  7F A4 EB 78 */	mr r4, r29
/* 8057CC8C  4B FF FF 69 */	bl search_lottery_ticket
/* 8057CC90  7F DE 1A 14 */	add r30, r30, r3
/* 8057CC94  3B FF 00 01 */	addi r31, r31, 1
lbl_8057CC98:
/* 8057CC98  2C 1F 00 0F */	cmpwi r31, 0xf
/* 8057CC9C  40 80 00 0C */	bge lbl_8057CCA8
/* 8057CCA0  2C 1E 00 05 */	cmpwi r30, 5
/* 8057CCA4  41 80 FF E0 */	blt lbl_8057CC84
lbl_8057CCA8:
/* 8057CCA8  38 00 00 05 */	li r0, 5
/* 8057CCAC  7F C4 FE 70 */	srawi r4, r30, 0x1f
/* 8057CCB0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8057CCB4  7C 00 F0 10 */	subfc r0, r0, r30
/* 8057CCB8  7C 64 19 14 */	adde r3, r4, r3
/* 8057CCBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8057CCC0  4B B1 E2 61 */	bl func_8009AF20
/* 8057CCC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057CCC8  7C 08 03 A6 */	mtlr r0
/* 8057CCCC  38 21 00 20 */	addi r1, r1, 0x20
/* 8057CCD0  4E 80 00 20 */	blr 
