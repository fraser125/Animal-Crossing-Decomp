lbl_80590348:
/* 80590348  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059034C  7C 08 02 A6 */	mflr r0
/* 80590350  90 01 00 24 */	stw r0, 0x24(r1)
/* 80590354  39 61 00 20 */	addi r11, r1, 0x20
/* 80590358  4B B0 AB 79 */	bl func_8009AED0
/* 8059035C  7C 7C 1B 78 */	mr r28, r3
/* 80590360  38 00 00 00 */	li r0, 0
/* 80590364  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80590368  7C 9D 23 78 */	mr r29, r4
/* 8059036C  3C 60 80 6C */	lis r3, data_806C26E8@ha /* 0x806C26E8@ha */
/* 80590370  3B E3 26 E8 */	addi r31, r3, data_806C26E8@l /* 0x806C26E8@l */
/* 80590374  93 BC 09 94 */	stw r29, 0x994(r28)
/* 80590378  54 9E 10 3A */	slwi r30, r4, 2
/* 8059037C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80590380  7C 03 F0 2E */	lwzx r0, r3, r30
/* 80590384  90 1C 09 98 */	stw r0, 0x998(r28)
/* 80590388  4B AC C9 6D */	bl fqrand
/* 8059038C  38 7F 00 64 */	addi r3, r31, 0x64
/* 80590390  38 9F 00 60 */	addi r4, r31, 0x60
/* 80590394  7C 03 F4 2E */	lfsx f0, r3, r30
/* 80590398  7F 83 E3 78 */	mr r3, r28
/* 8059039C  7C 04 F0 2E */	lwzx r0, r4, r30
/* 805903A0  7F A4 EB 78 */	mr r4, r29
/* 805903A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805903A8  FC 00 00 1E */	fctiwz f0, f0
/* 805903AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805903B0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805903B4  7C 00 2A 14 */	add r0, r0, r5
/* 805903B8  98 1C 07 53 */	stb r0, 0x753(r28)
/* 805903BC  4B FF FE 51 */	bl aTR0_set_animation
/* 805903C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805903C4  4B B0 AB 59 */	bl func_8009AF1C
/* 805903C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805903CC  7C 08 03 A6 */	mtlr r0
/* 805903D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805903D4  4E 80 00 20 */	blr 
