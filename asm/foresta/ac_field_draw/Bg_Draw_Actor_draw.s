lbl_80423C40:
/* 80423C40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80423C44  7C 08 02 A6 */	mflr r0
/* 80423C48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80423C4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80423C50  4B C7 72 81 */	bl func_8009AED0
/* 80423C54  7C 9D 23 78 */	mr r29, r4
/* 80423C58  3C 80 D5 02 */	lis r4, 0xD502 /* 0xD5020001@ha */
/* 80423C5C  81 1D 00 00 */	lwz r8, 0(r29)
/* 80423C60  7C 7C 1B 78 */	mr r28, r3
/* 80423C64  3C E0 CE 00 */	lis r7, 0xce00
/* 80423C68  38 C0 00 90 */	li r6, 0x90
/* 80423C6C  80 68 03 20 */	lwz r3, 0x320(r8)
/* 80423C70  38 A4 00 01 */	addi r5, r4, 0x0001 /* 0xD5020001@l */
/* 80423C74  38 80 00 00 */	li r4, 0
/* 80423C78  3B FC 01 74 */	addi r31, r28, 0x174
/* 80423C7C  38 03 00 08 */	addi r0, r3, 8
/* 80423C80  3B C0 00 00 */	li r30, 0
/* 80423C84  90 08 03 20 */	stw r0, 0x320(r8)
/* 80423C88  90 E3 00 00 */	stw r7, 0(r3)
/* 80423C8C  90 C3 00 04 */	stw r6, 4(r3)
/* 80423C90  80 68 02 E0 */	lwz r3, 0x2e0(r8)
/* 80423C94  38 03 00 08 */	addi r0, r3, 8
/* 80423C98  90 08 02 E0 */	stw r0, 0x2e0(r8)
/* 80423C9C  90 E3 00 00 */	stw r7, 0(r3)
/* 80423CA0  90 C3 00 04 */	stw r6, 4(r3)
/* 80423CA4  80 68 03 20 */	lwz r3, 0x320(r8)
/* 80423CA8  38 03 00 08 */	addi r0, r3, 8
/* 80423CAC  90 08 03 20 */	stw r0, 0x320(r8)
/* 80423CB0  90 A3 00 00 */	stw r5, 0(r3)
/* 80423CB4  90 83 00 04 */	stw r4, 4(r3)
/* 80423CB8  80 68 02 E0 */	lwz r3, 0x2e0(r8)
/* 80423CBC  38 03 00 08 */	addi r0, r3, 8
/* 80423CC0  90 08 02 E0 */	stw r0, 0x2e0(r8)
/* 80423CC4  90 A3 00 00 */	stw r5, 0(r3)
/* 80423CC8  90 83 00 04 */	stw r4, 4(r3)
lbl_80423CCC:
/* 80423CCC  7F E3 FB 78 */	mr r3, r31
/* 80423CD0  7F 84 E3 78 */	mr r4, r28
/* 80423CD4  7F A5 EB 78 */	mr r5, r29
/* 80423CD8  4B FF FB 11 */	bl aFD_DrawBlock
/* 80423CDC  3B DE 00 01 */	addi r30, r30, 1
/* 80423CE0  3B FF 00 18 */	addi r31, r31, 0x18
/* 80423CE4  2C 1E 00 09 */	cmpwi r30, 9
/* 80423CE8  41 80 FF E4 */	blt lbl_80423CCC
/* 80423CEC  80 DD 00 00 */	lwz r6, 0(r29)
/* 80423CF0  3C A0 D5 02 */	lis r5, 0xd502
/* 80423CF4  38 80 00 00 */	li r4, 0
/* 80423CF8  80 66 03 20 */	lwz r3, 0x320(r6)
/* 80423CFC  38 03 00 08 */	addi r0, r3, 8
/* 80423D00  90 06 03 20 */	stw r0, 0x320(r6)
/* 80423D04  90 A3 00 00 */	stw r5, 0(r3)
/* 80423D08  90 83 00 04 */	stw r4, 4(r3)
/* 80423D0C  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 80423D10  38 03 00 08 */	addi r0, r3, 8
/* 80423D14  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 80423D18  90 A3 00 00 */	stw r5, 0(r3)
/* 80423D1C  90 83 00 04 */	stw r4, 4(r3)
/* 80423D20  39 61 00 20 */	addi r11, r1, 0x20
/* 80423D24  4B C7 71 F9 */	bl func_8009AF1C
/* 80423D28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80423D2C  7C 08 03 A6 */	mtlr r0
/* 80423D30  38 21 00 20 */	addi r1, r1, 0x20
/* 80423D34  4E 80 00 20 */	blr 