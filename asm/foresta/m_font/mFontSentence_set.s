lbl_803B0F04:
/* 803B0F04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803B0F08  7C 08 02 A6 */	mflr r0
/* 803B0F0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803B0F10  39 61 00 40 */	addi r11, r1, 0x40
/* 803B0F14  4B CE 9F 95 */	bl func_8009AEA8
/* 803B0F18  83 21 00 48 */	lwz r25, 0x48(r1)
/* 803B0F1C  7C 92 23 78 */	mr r18, r4
/* 803B0F20  8B 41 00 4F */	lbz r26, 0x4f(r1)
/* 803B0F24  7C 7F 1B 78 */	mr r31, r3
/* 803B0F28  8B 61 00 53 */	lbz r27, 0x53(r1)
/* 803B0F2C  7C B3 2B 78 */	mr r19, r5
/* 803B0F30  8B 81 00 57 */	lbz r28, 0x57(r1)
/* 803B0F34  7C D4 33 78 */	mr r20, r6
/* 803B0F38  AB A1 00 5A */	lha r29, 0x5a(r1)
/* 803B0F3C  7C F5 3B 78 */	mr r21, r7
/* 803B0F40  7D 16 43 78 */	mr r22, r8
/* 803B0F44  7D 37 4B 78 */	mr r23, r9
/* 803B0F48  7D 58 53 78 */	mr r24, r10
/* 803B0F4C  3B C0 00 00 */	li r30, 0
/* 803B0F50  38 80 00 8C */	li r4, 0x8c
/* 803B0F54  4B CA C1 15 */	bl bzero
/* 803B0F58  92 5F 00 00 */	stw r18, 0(r31)
/* 803B0F5C  3C 60 80 64 */	lis r3, lit_632@ha /* 0x806420A0@ha */
/* 803B0F60  38 A3 20 A0 */	addi r5, r3, lit_632@l /* 0x806420A0@l */
/* 803B0F64  7F 04 C3 78 */	mr r4, r24
/* 803B0F68  92 7F 00 04 */	stw r19, 4(r31)
/* 803B0F6C  38 7F 00 18 */	addi r3, r31, 0x18
/* 803B0F70  C0 25 00 00 */	lfs f1, 0(r5)
/* 803B0F74  92 9F 00 08 */	stw r20, 8(r31)
/* 803B0F78  80 B5 00 00 */	lwz r5, 0(r21)
/* 803B0F7C  80 15 00 04 */	lwz r0, 4(r21)
/* 803B0F80  90 BF 00 0C */	stw r5, 0xc(r31)
/* 803B0F84  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803B0F88  92 DF 00 14 */	stw r22, 0x14(r31)
/* 803B0F8C  80 B7 00 00 */	lwz r5, 0(r23)
/* 803B0F90  80 17 00 04 */	lwz r0, 4(r23)
/* 803B0F94  90 BF 00 1C */	stw r5, 0x1c(r31)
/* 803B0F98  90 1F 00 20 */	stw r0, 0x20(r31)
/* 803B0F9C  C0 17 00 00 */	lfs f0, 0(r23)
/* 803B0FA0  EC 01 00 24 */	fdivs f0, f1, f0
/* 803B0FA4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 803B0FA8  C0 17 00 04 */	lfs f0, 4(r23)
/* 803B0FAC  EC 01 00 24 */	fdivs f0, f1, f0
/* 803B0FB0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 803B0FB4  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 803B0FB8  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 803B0FBC  48 00 A5 6D */	bl rgba_t_move
/* 803B0FC0  93 3F 00 40 */	stw r25, 0x40(r31)
/* 803B0FC4  9B 5F 00 46 */	stb r26, 0x46(r31)
/* 803B0FC8  9B 7F 00 47 */	stb r27, 0x47(r31)
/* 803B0FCC  9B 9F 00 48 */	stb r28, 0x48(r31)
/* 803B0FD0  B3 BF 00 44 */	sth r29, 0x44(r31)
/* 803B0FD4  80 7F 00 08 */	lwz r3, 8(r31)
/* 803B0FD8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 803B0FDC  41 82 00 0C */	beq lbl_803B0FE8
/* 803B0FE0  63 C0 00 01 */	ori r0, r30, 1
/* 803B0FE4  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_803B0FE8:
/* 803B0FE8  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 803B0FEC  41 82 00 0C */	beq lbl_803B0FF8
/* 803B0FF0  63 C0 00 02 */	ori r0, r30, 2
/* 803B0FF4  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_803B0FF8:
/* 803B0FF8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803B0FFC  4B FF FB D9 */	bl mFontSentence_line_offset_calc
/* 803B1000  3C 60 80 65 */	lis r3, unit_vec_xy@ha /* 0x80654310@ha */
/* 803B1004  80 9F 00 00 */	lwz r4, 0(r31)
/* 803B1008  39 03 43 10 */	addi r8, r3, unit_vec_xy@l /* 0x80654310@l */
/* 803B100C  63 C6 00 08 */	ori r6, r30, 8
/* 803B1010  38 7F 00 4C */	addi r3, r31, 0x4c
/* 803B1014  38 FF 00 0C */	addi r7, r31, 0xc
/* 803B1018  7D 09 43 78 */	mr r9, r8
/* 803B101C  39 5F 00 18 */	addi r10, r31, 0x18
/* 803B1020  38 A0 00 01 */	li r5, 1
/* 803B1024  4B FF F7 85 */	bl mFontChar_set
/* 803B1028  39 61 00 40 */	addi r11, r1, 0x40
/* 803B102C  4B CE 9E C9 */	bl func_8009AEF4
/* 803B1030  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803B1034  7C 08 03 A6 */	mtlr r0
/* 803B1038  38 21 00 40 */	addi r1, r1, 0x40
/* 803B103C  4E 80 00 20 */	blr 
