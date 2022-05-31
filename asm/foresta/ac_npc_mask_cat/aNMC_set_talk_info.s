lbl_8055F01C:
/* 8055F01C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055F020  7C 08 02 A6 */	mflr r0
/* 8055F024  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055F028  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055F02C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8055F030  3C 64 00 03 */	addis r3, r4, 3
/* 8055F034  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055F038  3C 84 00 02 */	addis r4, r4, 2
/* 8055F03C  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 8055F040  8B E4 41 42 */	lbz r31, 0x4142(r4)
/* 8055F044  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8055F048  41 82 00 40 */	beq lbl_8055F088
/* 8055F04C  2C 1F 00 00 */	cmpwi r31, 0
/* 8055F050  41 81 00 08 */	bgt lbl_8055F058
/* 8055F054  3B E0 00 01 */	li r31, 1
lbl_8055F058:
/* 8055F058  4B AF DC 9D */	bl fqrand
/* 8055F05C  3C 60 80 65 */	lis r3, data_80649704@ha /* 0x80649704@ha */
/* 8055F060  38 1F FF FF */	addi r0, r31, -1
/* 8055F064  C0 03 97 04 */	lfs f0, data_80649704@l(r3)  /* 0x80649704@l */
/* 8055F068  54 00 10 3A */	slwi r0, r0, 2
/* 8055F06C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8055F070  FC 00 00 1E */	fctiwz f0, f0
/* 8055F074  D8 01 00 08 */	stfd f0, 8(r1)
/* 8055F078  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8055F07C  7C 60 1A 14 */	add r3, r0, r3
/* 8055F080  38 63 31 E5 */	addi r3, r3, 0x31e5
/* 8055F084  48 00 00 14 */	b lbl_8055F098
lbl_8055F088:
/* 8055F088  38 1F 00 01 */	addi r0, r31, 1
/* 8055F08C  57 E3 10 3A */	slwi r3, r31, 2
/* 8055F090  98 04 41 42 */	stb r0, 0x4142(r4)
/* 8055F094  38 63 31 E4 */	addi r3, r3, 0x31e4
lbl_8055F098:
/* 8055F098  4B E3 94 7D */	bl mDemo_Set_msg_num
/* 8055F09C  4B FF FF 45 */	bl func_8055EFE0
/* 8055F0A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055F0A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055F0A8  7C 08 03 A6 */	mtlr r0
/* 8055F0AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8055F0B0  4E 80 00 20 */	blr 
