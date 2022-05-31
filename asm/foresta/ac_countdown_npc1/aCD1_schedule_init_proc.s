lbl_80517CC0:
/* 80517CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80517CC4  7C 08 02 A6 */	mflr r0
/* 80517CC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80517CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80517CD0  4B B8 32 05 */	bl func_8009AED4
/* 80517CD4  3C A0 80 51 */	lis r5, aCD1_think_proc@ha /* 0x80517C8C@ha */
/* 80517CD8  7C 7E 1B 78 */	mr r30, r3
/* 80517CDC  38 05 7C 8C */	addi r0, r5, aCD1_think_proc@l /* 0x80517C8C@l */
/* 80517CE0  38 C0 00 00 */	li r6, 0
/* 80517CE4  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80517CE8  38 A0 FF FF */	li r5, -1
/* 80517CEC  38 00 00 FE */	li r0, 0xfe
/* 80517CF0  7C 9F 23 78 */	mr r31, r4
/* 80517CF4  98 C3 08 31 */	stb r6, 0x831(r3)
/* 80517CF8  90 A3 08 F4 */	stw r5, 0x8f4(r3)
/* 80517CFC  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 80517D00  A0 83 00 06 */	lhz r4, 6(r3)
/* 80517D04  3F A4 FF FF */	addis r29, r4, 0xffff
/* 80517D08  3B BD 2F BB */	addi r29, r29, 0x2fbb
/* 80517D0C  93 A3 09 A8 */	stw r29, 0x9a8(r3)
/* 80517D10  90 A3 09 A0 */	stw r5, 0x9a0(r3)
/* 80517D14  4B FF FD 25 */	bl aCD1_decide_demo_flg
/* 80517D18  57 A0 07 FF */	clrlwi. r0, r29, 0x1f
/* 80517D1C  40 82 00 24 */	bne lbl_80517D40
/* 80517D20  4B B4 4F D5 */	bl fqrand
/* 80517D24  3C 60 80 65 */	lis r3, lit_674@ha /* 0x80649054@ha */
/* 80517D28  C0 03 90 54 */	lfs f0, lit_674@l(r3)  /* 0x80649054@l */
/* 80517D2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80517D30  FC 00 00 1E */	fctiwz f0, f0
/* 80517D34  D8 01 00 08 */	stfd f0, 8(r1)
/* 80517D38  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80517D3C  48 00 00 24 */	b lbl_80517D60
lbl_80517D40:
/* 80517D40  4B E8 E5 69 */	bl mFI_GetPuleIdx
/* 80517D44  57 A0 FF FE */	rlwinm r0, r29, 0x1f, 0x1f, 0x1f
/* 80517D48  3C 80 80 6A */	lis r4, def_angle@ha /* 0x8069FEB0@ha */
/* 80517D4C  1C A0 00 0E */	mulli r5, r0, 0xe
/* 80517D50  54 60 08 3C */	slwi r0, r3, 1
/* 80517D54  38 64 FE B0 */	addi r3, r4, def_angle@l /* 0x8069FEB0@l */
/* 80517D58  7C 63 2A 14 */	add r3, r3, r5
/* 80517D5C  7C 03 02 AE */	lhax r0, r3, r0
lbl_80517D60:
/* 80517D60  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 80517D64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80517D68  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80517D6C  7F C3 F3 78 */	mr r3, r30
/* 80517D70  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 80517D74  3C E4 00 02 */	addis r7, r4, 2
/* 80517D78  7F E4 FB 78 */	mr r4, r31
/* 80517D7C  38 A0 00 09 */	li r5, 9
/* 80517D80  B0 1E 09 24 */	sth r0, 0x924(r30)
/* 80517D84  38 C0 00 00 */	li r6, 0
/* 80517D88  B0 1E 09 AC */	sth r0, 0x9ac(r30)
/* 80517D8C  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80517D90  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80517D94  7D 89 03 A6 */	mtctr r12
/* 80517D98  4E 80 04 21 */	bctrl 
/* 80517D9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80517DA0  4B B8 31 81 */	bl func_8009AF20
/* 80517DA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80517DA8  7C 08 03 A6 */	mtlr r0
/* 80517DAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80517DB0  4E 80 00 20 */	blr 
