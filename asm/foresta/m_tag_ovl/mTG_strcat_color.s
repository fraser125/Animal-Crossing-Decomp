lbl_805F01B0:
/* 805F01B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F01B4  7C 08 02 A6 */	mflr r0
/* 805F01B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F01BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805F01C0  4B AA AD 09 */	bl func_8009AEC8
/* 805F01C4  7C BC 2B 78 */	mr r28, r5
/* 805F01C8  7C 9B 23 78 */	mr r27, r4
/* 805F01CC  7C 7A 1B 78 */	mr r26, r3
/* 805F01D0  7C DE 33 78 */	mr r30, r6
/* 805F01D4  7C FD 3B 78 */	mr r29, r7
/* 805F01D8  7F 84 E3 78 */	mr r4, r28
/* 805F01DC  38 A0 00 20 */	li r5, 0x20
/* 805F01E0  4B DC C4 45 */	bl func_803BC624
/* 805F01E4  7C 60 1B 78 */	mr r0, r3
/* 805F01E8  7F 63 DB 78 */	mr r3, r27
/* 805F01EC  7C 1F 03 78 */	mr r31, r0
/* 805F01F0  7F C4 F3 78 */	mr r4, r30
/* 805F01F4  38 A0 00 20 */	li r5, 0x20
/* 805F01F8  4B DC C4 2D */	bl func_803BC624
/* 805F01FC  7C 7E 1B 78 */	mr r30, r3
/* 805F0200  7C 1E E0 50 */	subf r0, r30, r28
/* 805F0204  7C 1F 00 50 */	subf r0, r31, r0
/* 805F0208  2C 00 00 01 */	cmpwi r0, 1
/* 805F020C  40 81 00 64 */	ble lbl_805F0270
/* 805F0210  3C 80 80 6D */	lis r4, font_color_base@ha /* 0x806D08BC@ha */
/* 805F0214  7F 43 D3 78 */	mr r3, r26
/* 805F0218  38 84 08 BC */	addi r4, r4, font_color_base@l /* 0x806D08BC@l */
/* 805F021C  7F 85 E3 78 */	mr r5, r28
/* 805F0220  38 C0 00 06 */	li r6, 6
/* 805F0224  4B FF FE 7D */	bl mTG_strcat
/* 805F0228  7C 7F 1B 78 */	mr r31, r3
/* 805F022C  7C 1F F2 14 */	add r0, r31, r30
/* 805F0230  7C 00 E0 00 */	cmpw r0, r28
/* 805F0234  40 81 00 0C */	ble lbl_805F0240
/* 805F0238  7C 1C 00 50 */	subf r0, r28, r0
/* 805F023C  7F C0 F0 50 */	subf r30, r0, r30
lbl_805F0240:
/* 805F0240  88 1D 00 00 */	lbz r0, 0(r29)
/* 805F0244  7C 7A FA 14 */	add r3, r26, r31
/* 805F0248  7F 64 DB 78 */	mr r4, r27
/* 805F024C  7F C5 F3 78 */	mr r5, r30
/* 805F0250  98 03 FF FC */	stb r0, -4(r3)
/* 805F0254  88 1D 00 01 */	lbz r0, 1(r29)
/* 805F0258  98 03 FF FD */	stb r0, -3(r3)
/* 805F025C  88 1D 00 02 */	lbz r0, 2(r29)
/* 805F0260  98 03 FF FE */	stb r0, -2(r3)
/* 805F0264  9B C3 FF FF */	stb r30, -1(r3)
/* 805F0268  4B A1 32 29 */	bl memcpy
/* 805F026C  7F FF F2 14 */	add r31, r31, r30
lbl_805F0270:
/* 805F0270  7F E3 FB 78 */	mr r3, r31
/* 805F0274  39 61 00 20 */	addi r11, r1, 0x20
/* 805F0278  4B AA AC 9D */	bl func_8009AF14
/* 805F027C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F0280  7C 08 03 A6 */	mtlr r0
/* 805F0284  38 21 00 20 */	addi r1, r1, 0x20
/* 805F0288  4E 80 00 20 */	blr 
