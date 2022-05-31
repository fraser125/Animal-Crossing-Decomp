lbl_803C0A4C:
/* 803C0A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0A50  7C 08 02 A6 */	mflr r0
/* 803C0A54  3D 00 80 64 */	lis r8, lit_943@ha /* 0x80642620@ha */
/* 803C0A58  3C E0 80 64 */	lis r7, lit_944@ha /* 0x80642624@ha */
/* 803C0A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0A60  3C C0 80 64 */	lis r6, lit_945@ha /* 0x80642628@ha */
/* 803C0A64  39 48 26 20 */	addi r10, r8, lit_943@l /* 0x80642620@l */
/* 803C0A68  39 27 26 24 */	addi r9, r7, lit_944@l /* 0x80642624@l */
/* 803C0A6C  39 06 26 28 */	addi r8, r6, lit_945@l /* 0x80642628@l */
/* 803C0A70  3C A0 80 64 */	lis r5, lit_946@ha /* 0x8064262C@ha */
/* 803C0A74  38 C5 26 2C */	addi r6, r5, lit_946@l /* 0x8064262C@l */
/* 803C0A78  3C 80 80 64 */	lis r4, data_806425FC@ha /* 0x806425FC@ha */
/* 803C0A7C  38 A4 25 FC */	addi r5, r4, data_806425FC@l /* 0x806425FC@l */
/* 803C0A80  3C 60 80 64 */	lis r3, lit_447@ha /* 0x80642608@ha */
/* 803C0A84  38 83 26 08 */	addi r4, r3, lit_447@l /* 0x80642608@l */
/* 803C0A88  C0 89 00 00 */	lfs f4, 0(r9)
/* 803C0A8C  C0 68 00 00 */	lfs f3, 0(r8)
/* 803C0A90  39 80 00 00 */	li r12, 0
/* 803C0A94  3D 60 81 17 */	lis r11, mMsg_data@ha /* 0x8116A478@ha */
/* 803C0A98  3C 60 81 17 */	lis r3, mMsg_window@ha /* 0x81169FC0@ha */
/* 803C0A9C  95 83 9F C0 */	stwu r12, mMsg_window@l(r3)  /* 0x81169FC0@l */
/* 803C0AA0  38 E0 00 FF */	li r7, 0xff
/* 803C0AA4  C0 46 00 00 */	lfs f2, 0(r6)
/* 803C0AA8  38 00 00 EB */	li r0, 0xeb
/* 803C0AAC  C0 25 00 00 */	lfs f1, 0(r5)
/* 803C0AB0  39 20 00 32 */	li r9, 0x32
/* 803C0AB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 803C0AB8  39 00 00 5A */	li r8, 0x5a
/* 803C0ABC  C0 AA 00 00 */	lfs f5, 0(r10)
/* 803C0AC0  38 C0 00 A0 */	li r6, 0xa0
/* 803C0AC4  95 8B A4 78 */	stwu r12, mMsg_data@l(r11)  /* 0x8116A478@l */
/* 803C0AC8  38 A0 00 D7 */	li r5, 0xd7
/* 803C0ACC  38 80 00 1E */	li r4, 0x1e
/* 803C0AD0  91 83 00 04 */	stw r12, 4(r3)
/* 803C0AD4  91 83 00 08 */	stw r12, 8(r3)
/* 803C0AD8  91 63 00 0C */	stw r11, 0xc(r3)
/* 803C0ADC  D0 A3 00 10 */	stfs f5, 0x10(r3)
/* 803C0AE0  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 803C0AE4  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 803C0AE8  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 803C0AEC  91 83 00 20 */	stw r12, 0x20(r3)
/* 803C0AF0  91 83 00 28 */	stw r12, 0x28(r3)
/* 803C0AF4  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 803C0AF8  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 803C0AFC  91 83 00 34 */	stw r12, 0x34(r3)
/* 803C0B00  99 23 02 B0 */	stb r9, 0x2b0(r3)
/* 803C0B04  99 03 02 B1 */	stb r8, 0x2b1(r3)
/* 803C0B08  99 83 02 B2 */	stb r12, 0x2b2(r3)
/* 803C0B0C  98 E3 02 B3 */	stb r7, 0x2b3(r3)
/* 803C0B10  98 C3 02 B4 */	stb r6, 0x2b4(r3)
/* 803C0B14  98 A3 02 B5 */	stb r5, 0x2b5(r3)
/* 803C0B18  98 83 02 B6 */	stb r4, 0x2b6(r3)
/* 803C0B1C  98 E3 02 B7 */	stb r7, 0x2b7(r3)
/* 803C0B20  98 03 02 B8 */	stb r0, 0x2b8(r3)
/* 803C0B24  98 E3 02 B9 */	stb r7, 0x2b9(r3)
/* 803C0B28  98 03 02 BA */	stb r0, 0x2ba(r3)
/* 803C0B2C  98 E3 02 BB */	stb r7, 0x2bb(r3)
/* 803C0B30  4B FF FB 1D */	bl mMsg_init_FontColor
/* 803C0B34  3C 60 81 17 */	lis r3, mMsg_window@ha /* 0x81169FC0@ha */
/* 803C0B38  38 63 9F C0 */	addi r3, r3, mMsg_window@l /* 0x81169FC0@l */
/* 803C0B3C  4B FF FB 6D */	bl mMsg_init_NowDisplayLIne
/* 803C0B40  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C0B44  3C 80 80 64 */	lis r4, lit_947@ha /* 0x80642630@ha */
/* 803C0B48  C0 04 26 30 */	lfs f0, lit_947@l(r4)  /* 0x80642630@l */
/* 803C0B4C  3C A0 81 17 */	lis r5, mMsg_window@ha /* 0x81169FC0@ha */
/* 803C0B50  C0 23 26 18 */	lfs f1, lit_725@l(r3)  /* 0x80642618@l */
/* 803C0B54  38 65 9F C0 */	addi r3, r5, mMsg_window@l /* 0x81169FC0@l */
/* 803C0B58  38 E0 00 00 */	li r7, 0
/* 803C0B5C  38 C0 00 FF */	li r6, 0xff
/* 803C0B60  38 A0 00 C4 */	li r5, 0xc4
/* 803C0B64  38 80 00 42 */	li r4, 0x42
/* 803C0B68  38 00 00 04 */	li r0, 4
/* 803C0B6C  98 E3 02 CC */	stb r7, 0x2cc(r3)
/* 803C0B70  98 E3 02 CD */	stb r7, 0x2cd(r3)
/* 803C0B74  98 C3 02 CE */	stb r6, 0x2ce(r3)
/* 803C0B78  98 E3 02 CF */	stb r7, 0x2cf(r3)
/* 803C0B7C  D0 03 02 D0 */	stfs f0, 0x2d0(r3)
/* 803C0B80  D0 03 02 D4 */	stfs f0, 0x2d4(r3)
/* 803C0B84  90 A3 02 D8 */	stw r5, 0x2d8(r3)
/* 803C0B88  90 83 02 DC */	stw r4, 0x2dc(r3)
/* 803C0B8C  90 03 02 E0 */	stw r0, 0x2e0(r3)
/* 803C0B90  90 E3 02 E4 */	stw r7, 0x2e4(r3)
/* 803C0B94  D0 23 04 10 */	stfs f1, 0x410(r3)
/* 803C0B98  4B FF FB 59 */	bl mMsg_SetTimer
/* 803C0B9C  3C 80 80 64 */	lis r4, lit_725@ha /* 0x80642618@ha */
/* 803C0BA0  3C 60 80 64 */	lis r3, lit_947@ha /* 0x80642630@ha */
/* 803C0BA4  38 E4 26 18 */	addi r7, r4, lit_725@l /* 0x80642618@l */
/* 803C0BA8  3C C0 81 17 */	lis r6, mMsg_window@ha /* 0x81169FC0@ha */
/* 803C0BAC  38 A3 26 30 */	addi r5, r3, lit_947@l /* 0x80642630@l */
/* 803C0BB0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803C0BB4  38 66 9F C0 */	addi r3, r6, mMsg_window@l /* 0x81169FC0@l */
/* 803C0BB8  38 C0 00 00 */	li r6, 0
/* 803C0BBC  C0 27 00 00 */	lfs f1, 0(r7)
/* 803C0BC0  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803C0BC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 803C0BC8  38 80 FF FF */	li r4, -1
/* 803C0BCC  D0 23 04 18 */	stfs f1, 0x418(r3)
/* 803C0BD0  90 C3 04 1C */	stw r6, 0x41c(r3)
/* 803C0BD4  90 C3 04 20 */	stw r6, 0x420(r3)
/* 803C0BD8  D0 23 04 24 */	stfs f1, 0x424(r3)
/* 803C0BDC  D0 03 04 28 */	stfs f0, 0x428(r3)
/* 803C0BE0  90 83 04 2C */	stw r4, 0x42c(r3)
/* 803C0BE4  90 C3 04 30 */	stw r6, 0x430(r3)
/* 803C0BE8  90 C3 04 34 */	stw r6, 0x434(r3)
/* 803C0BEC  90 C3 04 38 */	stw r6, 0x438(r3)
/* 803C0BF0  90 C3 04 3C */	stw r6, 0x43c(r3)
/* 803C0BF4  90 C3 04 40 */	stw r6, 0x440(r3)
/* 803C0BF8  90 03 04 44 */	stw r0, 0x444(r3)
/* 803C0BFC  48 00 01 21 */	bl mMsg_Unset_CancelNormalContinue
/* 803C0C00  3C 60 81 17 */	lis r3, mMsg_window@ha /* 0x81169FC0@ha */
/* 803C0C04  38 63 9F C0 */	addi r3, r3, mMsg_window@l /* 0x81169FC0@l */
/* 803C0C08  48 00 01 2D */	bl mMsg_Unset_ForceNext
/* 803C0C0C  3C 60 81 17 */	lis r3, mMsg_window@ha /* 0x81169FC0@ha */
/* 803C0C10  38 63 9F C0 */	addi r3, r3, mMsg_window@l /* 0x81169FC0@l */
/* 803C0C14  48 00 01 39 */	bl mMsg_Unset_LockContinue
/* 803C0C18  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C0C1C  C0 23 26 18 */	lfs f1, lit_725@l(r3)  /* 0x80642618@l */
/* 803C0C20  48 00 15 E9 */	bl mMsg_sound_MessageSpeedForce
/* 803C0C24  38 60 00 00 */	li r3, 0
/* 803C0C28  48 00 16 C5 */	bl mMsg_sound_MessageStatus
/* 803C0C2C  3C 80 81 17 */	lis r4, mMsg_window@ha /* 0x81169FC0@ha */
/* 803C0C30  38 60 85 3E */	li r3, -31426
/* 803C0C34  38 A4 9F C0 */	addi r5, r4, mMsg_window@l /* 0x81169FC0@l */
/* 803C0C38  38 00 00 00 */	li r0, 0
/* 803C0C3C  80 85 04 0C */	lwz r4, 0x40c(r5)
/* 803C0C40  98 05 04 00 */	stb r0, 0x400(r5)
/* 803C0C44  7C 83 18 38 */	and r3, r4, r3
/* 803C0C48  90 65 04 0C */	stw r3, 0x40c(r5)
/* 803C0C4C  98 05 04 01 */	stb r0, 0x401(r5)
/* 803C0C50  98 05 04 02 */	stb r0, 0x402(r5)
/* 803C0C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0C58  7C 08 03 A6 */	mtlr r0
/* 803C0C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0C60  4E 80 00 20 */	blr 
