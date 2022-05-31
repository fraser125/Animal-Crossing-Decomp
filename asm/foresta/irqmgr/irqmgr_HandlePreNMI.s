lbl_80405F64:
/* 80405F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405F68  7C 08 02 A6 */	mflr r0
/* 80405F6C  3C 60 81 1C */	lis r3, data_811C5698@ha /* 0x811C5698@ha */
/* 80405F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405F74  38 00 00 01 */	li r0, 1
/* 80405F78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80405F7C  3B E3 56 98 */	addi r31, r3, data_811C5698@l /* 0x811C5698@l */
/* 80405F80  90 1F 00 00 */	stw r0, 0(r31)
/* 80405F84  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80405F88  98 03 03 B4 */	stb r0, 0x3b4(r3)
/* 80405F8C  4B C5 A0 D5 */	bl osGetTime
/* 80405F90  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 80405F94  3C C0 00 02 */	lis r6, 0x0002 /* 0x0001E848@ha */
/* 80405F98  3C A0 00 06 */	lis r5, 0x0006 /* 0x00061A80@ha */
/* 80405F9C  3D 60 80 00 */	lis r11, 0x8000 /* 0x800000F8@ha */
/* 80405FA0  90 87 03 BC */	stw r4, 0x3bc(r7)
/* 80405FA4  38 05 1A 80 */	addi r0, r5, 0x1A80 /* 0x00061A80@l */
/* 80405FA8  38 C6 E8 48 */	addi r6, r6, 0xE848 /* 0x0001E848@l */
/* 80405FAC  38 A0 00 00 */	li r5, 0
/* 80405FB0  90 67 03 B8 */	stw r3, 0x3b8(r7)
/* 80405FB4  39 00 00 00 */	li r8, 0
/* 80405FB8  38 E0 00 00 */	li r7, 0
/* 80405FBC  39 40 02 9F */	li r10, 0x29f
/* 80405FC0  90 9F 00 0C */	stw r4, 0xc(r31)
/* 80405FC4  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80405FC8  90 7F 00 08 */	stw r3, 8(r31)
/* 80405FCC  38 64 03 C0 */	addi r3, r4, 0x3c0
/* 80405FD0  39 24 00 60 */	addi r9, r4, 0x60
/* 80405FD4  80 8B 00 F8 */	lwz r4, 0x00F8(r11)  /* 0x800000F8@l */
/* 80405FD8  54 84 F0 BE */	srwi r4, r4, 2
/* 80405FDC  7D 64 33 96 */	divwu r11, r4, r6
/* 80405FE0  7C 80 59 D6 */	mullw r4, r0, r11
/* 80405FE4  54 86 E8 3E */	rotlwi r6, r4, 0x1d
/* 80405FE8  7C 00 58 16 */	mulhwu r0, r0, r11
/* 80405FEC  7C 85 59 D6 */	mullw r4, r5, r11
/* 80405FF0  7C 00 22 14 */	add r0, r0, r4
/* 80405FF4  50 06 E8 04 */	rlwimi r6, r0, 0x1d, 0, 2
/* 80405FF8  54 05 E8 FE */	srwi r5, r0, 3
/* 80405FFC  4B C5 A2 5D */	bl osSetTimer
/* 80406000  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80406004  38 63 00 20 */	addi r3, r3, 0x20
/* 80406008  4B FF FE ED */	bl irqmgr_JamMesgForClient
/* 8040600C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80406010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80406014  7C 08 03 A6 */	mtlr r0
/* 80406018  38 21 00 10 */	addi r1, r1, 0x10
/* 8040601C  4E 80 00 20 */	blr 
