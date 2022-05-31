lbl_805A1E5C:
/* 805A1E5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A1E60  7C 08 02 A6 */	mflr r0
/* 805A1E64  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A1E68  39 61 00 30 */	addi r11, r1, 0x30
/* 805A1E6C  4B AF 90 69 */	bl func_8009AED4
/* 805A1E70  1C 84 02 50 */	mulli r4, r4, 0x250
/* 805A1E74  3C A0 81 1F */	lis r5, data_811F2870@ha /* 0x811F2870@ha */
/* 805A1E78  80 05 28 70 */	lwz r0, data_811F2870@l(r5)  /* 0x811F2870@l */
/* 805A1E7C  7C 7D 1B 78 */	mr r29, r3
/* 805A1E80  83 C3 00 14 */	lwz r30, 0x14(r3)
/* 805A1E84  3B E4 01 74 */	addi r31, r4, 0x174
/* 805A1E88  7F E0 FA 14 */	add r31, r0, r31
/* 805A1E8C  38 80 02 50 */	li r4, 0x250
/* 805A1E90  7F E3 FB 78 */	mr r3, r31
/* 805A1E94  4B AB B1 D5 */	bl bzero
/* 805A1E98  3C 60 80 65 */	lis r3, data_8064A34C@ha /* 0x8064A34C@ha */
/* 805A1E9C  3C C0 80 3C */	lis r6, none_proc1@ha /* 0x803BB54C@ha */
/* 805A1EA0  38 83 A3 4C */	addi r4, r3, data_8064A34C@l /* 0x8064A34C@l */
/* 805A1EA4  38 00 00 01 */	li r0, 1
/* 805A1EA8  C0 04 00 00 */	lfs f0, 0(r4)
/* 805A1EAC  3C 60 80 65 */	lis r3, lit_508@ha /* 0x8064A350@ha */
/* 805A1EB0  38 A3 A3 50 */	addi r5, r3, lit_508@l /* 0x8064A350@l */
/* 805A1EB4  39 66 B5 4C */	addi r11, r6, none_proc1@l /* 0x803BB54C@l */
/* 805A1EB8  D0 1F 00 E4 */	stfs f0, 0xe4(r31)
/* 805A1EBC  3C 60 80 6C */	lis r3, Dummy_Profile@ha /* 0x806C39BC@ha */
/* 805A1EC0  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A1EC4  38 83 39 BC */	addi r4, r3, Dummy_Profile@l /* 0x806C39BC@l */
/* 805A1EC8  90 1F 01 D0 */	stw r0, 0x1d0(r31)
/* 805A1ECC  39 80 00 00 */	li r12, 0
/* 805A1ED0  38 00 FF FF */	li r0, -1
/* 805A1ED4  7F E3 FB 78 */	mr r3, r31
/* 805A1ED8  91 9F 01 D4 */	stw r12, 0x1d4(r31)
/* 805A1EDC  7F C6 F3 78 */	mr r6, r30
/* 805A1EE0  38 A0 00 00 */	li r5, 0
/* 805A1EE4  38 E0 FF FF */	li r7, -1
/* 805A1EE8  81 5D 00 00 */	lwz r10, 0(r29)
/* 805A1EEC  39 00 00 00 */	li r8, 0
/* 805A1EF0  39 20 00 00 */	li r9, 0
/* 805A1EF4  91 5F 01 D8 */	stw r10, 0x1d8(r31)
/* 805A1EF8  39 40 00 00 */	li r10, 0
/* 805A1EFC  91 7F 01 E4 */	stw r11, 0x1e4(r31)
/* 805A1F00  D0 1F 01 F4 */	stfs f0, 0x1f4(r31)
/* 805A1F04  81 7F 02 48 */	lwz r11, 0x248(r31)
/* 805A1F08  61 6B 00 01 */	ori r11, r11, 1
/* 805A1F0C  91 7F 02 48 */	stw r11, 0x248(r31)
/* 805A1F10  89 7E 00 E4 */	lbz r11, 0xe4(r30)
/* 805A1F14  91 61 00 08 */	stw r11, 8(r1)
/* 805A1F18  89 7E 00 E5 */	lbz r11, 0xe5(r30)
/* 805A1F1C  91 61 00 0C */	stw r11, 0xc(r1)
/* 805A1F20  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A1F24  91 81 00 14 */	stw r12, 0x14(r1)
/* 805A1F28  91 81 00 18 */	stw r12, 0x18(r1)
/* 805A1F2C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805A1F30  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805A1F34  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 805A1F38  4B DD 37 15 */	bl Actor_init_actor_class
/* 805A1F3C  3C 60 80 65 */	lis r3, lit_510@ha /* 0x8064A358@ha */
/* 805A1F40  3C A0 80 65 */	lis r5, lit_509@ha /* 0x8064A354@ha */
/* 805A1F44  C0 43 A3 58 */	lfs f2, lit_510@l(r3)  /* 0x8064A358@l */
/* 805A1F48  3C 80 80 37 */	lis r4, mAc_ActorShadowCircle@ha /* 0x80376F30@ha */
/* 805A1F4C  C0 25 A3 54 */	lfs f1, lit_509@l(r5)  /* 0x8064A354@l */
/* 805A1F50  38 84 6F 30 */	addi r4, r4, mAc_ActorShadowCircle@l /* 0x80376F30@l */
/* 805A1F54  FC 60 10 90 */	fmr f3, f2
/* 805A1F58  7F E3 FB 78 */	mr r3, r31
/* 805A1F5C  4B DD 24 95 */	bl Shape_Info_init
/* 805A1F60  3C 60 80 65 */	lis r3, lit_511@ha /* 0x8064A35C@ha */
/* 805A1F64  38 00 00 02 */	li r0, 2
/* 805A1F68  C0 03 A3 5C */	lfs f0, lit_511@l(r3)  /* 0x8064A35C@l */
/* 805A1F6C  38 BF 00 24 */	addi r5, r31, 0x24
/* 805A1F70  38 9F 00 08 */	addi r4, r31, 8
/* 805A1F74  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 805A1F78  7C 09 03 A6 */	mtctr r0
lbl_805A1F7C:
/* 805A1F7C  80 64 00 04 */	lwz r3, 4(r4)
/* 805A1F80  84 04 00 08 */	lwzu r0, 8(r4)
/* 805A1F84  90 65 00 04 */	stw r3, 4(r5)
/* 805A1F88  94 05 00 08 */	stwu r0, 8(r5)
/* 805A1F8C  42 00 FF F0 */	bdnz lbl_805A1F7C
/* 805A1F90  80 04 00 04 */	lwz r0, 4(r4)
/* 805A1F94  3C 60 80 65 */	lis r3, lit_509@ha /* 0x8064A354@ha */
/* 805A1F98  38 83 A3 54 */	addi r4, r3, lit_509@l /* 0x8064A354@l */
/* 805A1F9C  7F E3 FB 78 */	mr r3, r31
/* 805A1FA0  90 05 00 04 */	stw r0, 4(r5)
/* 805A1FA4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805A1FA8  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 805A1FAC  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 805A1FB0  A0 1F 00 38 */	lhz r0, 0x38(r31)
/* 805A1FB4  B0 1F 00 E0 */	sth r0, 0xe0(r31)
/* 805A1FB8  4B DD 22 19 */	bl func_803741D0
/* 805A1FBC  38 7F 00 3C */	addi r3, r31, 0x3c
/* 805A1FC0  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A1FC4  4B E1 8E F9 */	bl xyz_t_move
/* 805A1FC8  3C 60 80 65 */	lis r3, lit_512@ha /* 0x8064A360@ha */
/* 805A1FCC  3C 80 80 65 */	lis r4, lit_513@ha /* 0x8064A364@ha */
/* 805A1FD0  38 A3 A3 60 */	addi r5, r3, lit_512@l /* 0x8064A360@l */
/* 805A1FD4  C0 24 A3 64 */	lfs f1, lit_513@l(r4)  /* 0x8064A364@l */
/* 805A1FD8  C0 45 00 00 */	lfs f2, 0(r5)
/* 805A1FDC  3C 60 80 65 */	lis r3, lit_514@ha /* 0x8064A368@ha */
/* 805A1FE0  C0 03 A3 68 */	lfs f0, lit_514@l(r3)  /* 0x8064A368@l */
/* 805A1FE4  D0 5F 01 34 */	stfs f2, 0x134(r31)
/* 805A1FE8  D0 3F 01 38 */	stfs f1, 0x138(r31)
/* 805A1FEC  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 805A1FF0  D0 5F 01 40 */	stfs f2, 0x140(r31)
/* 805A1FF4  88 7F 00 08 */	lbz r3, 8(r31)
/* 805A1FF8  88 9F 00 09 */	lbz r4, 9(r31)
/* 805A1FFC  7C 63 07 74 */	extsb r3, r3
/* 805A2000  7C 84 07 74 */	extsb r4, r4
/* 805A2004  4B E0 42 E5 */	bl mFI_BkNum2BlockKind
/* 805A2008  54 63 02 52 */	rlwinm r3, r3, 0, 9, 9
/* 805A200C  3C 03 FF C0 */	addis r0, r3, 0xffc0
/* 805A2010  28 00 00 00 */	cmplwi r0, 0
/* 805A2014  40 82 00 10 */	bne lbl_805A2024
/* 805A2018  80 1F 02 48 */	lwz r0, 0x248(r31)
/* 805A201C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805A2020  90 1F 02 48 */	stw r0, 0x248(r31)
lbl_805A2024:
/* 805A2024  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A2028  2C 00 00 28 */	cmpwi r0, 0x28
/* 805A202C  40 82 00 20 */	bne lbl_805A204C
/* 805A2030  3C 60 80 65 */	lis r3, lit_515@ha /* 0x8064A36C@ha */
/* 805A2034  38 00 00 32 */	li r0, 0x32
/* 805A2038  90 1F 02 44 */	stw r0, 0x244(r31)
/* 805A203C  C0 03 A3 6C */	lfs f0, lit_515@l(r3)  /* 0x8064A36C@l */
/* 805A2040  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 805A2044  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 805A2048  48 00 00 0C */	b lbl_805A2054
lbl_805A204C:
/* 805A204C  38 00 00 78 */	li r0, 0x78
/* 805A2050  90 1F 02 44 */	stw r0, 0x244(r31)
lbl_805A2054:
/* 805A2054  80 7F 01 D8 */	lwz r3, 0x1d8(r31)
/* 805A2058  38 03 FF E1 */	addi r0, r3, -31
/* 805A205C  28 00 00 0D */	cmplwi r0, 0xd
/* 805A2060  41 81 00 34 */	bgt lbl_805A2094
/* 805A2064  3C 60 80 6C */	lis r3, lit_516@ha /* 0x806C39E0@ha */
/* 805A2068  54 00 10 3A */	slwi r0, r0, 2
/* 805A206C  38 63 39 E0 */	addi r3, r3, lit_516@l /* 0x806C39E0@l */
/* 805A2070  7C 03 00 2E */	lwzx r0, r3, r0
/* 805A2074  7C 09 03 A6 */	mtctr r0
/* 805A2078  4E 80 04 20 */	bctr 
lbl_805A207C:
/* 805A207C  38 00 00 16 */	li r0, 0x16
/* 805A2080  90 1F 01 D8 */	stw r0, 0x1d8(r31)
lbl_805A2084:
/* 805A2084  3C 60 80 6C */	lis r3, aGYO_program_dlftbl@ha /* 0x806C39B4@ha */
/* 805A2088  38 63 39 B4 */	addi r3, r3, aGYO_program_dlftbl@l /* 0x806C39B4@l */
/* 805A208C  38 63 00 04 */	addi r3, r3, 4
/* 805A2090  48 00 00 10 */	b lbl_805A20A0
lbl_805A2094:
/* 805A2094  3C 60 80 6C */	lis r3, aGYO_program_dlftbl@ha /* 0x806C39B4@ha */
/* 805A2098  38 03 39 B4 */	addi r0, r3, aGYO_program_dlftbl@l /* 0x806C39B4@l */
/* 805A209C  7C 03 03 78 */	mr r3, r0
lbl_805A20A0:
/* 805A20A0  80 63 00 00 */	lwz r3, 0(r3)
/* 805A20A4  38 00 00 01 */	li r0, 1
/* 805A20A8  90 7F 01 64 */	stw r3, 0x164(r31)
/* 805A20AC  98 1F 00 B5 */	stb r0, 0xb5(r31)
/* 805A20B0  39 61 00 30 */	addi r11, r1, 0x30
/* 805A20B4  4B AF 8E 6D */	bl func_8009AF20
/* 805A20B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A20BC  7C 08 03 A6 */	mtlr r0
/* 805A20C0  38 21 00 30 */	addi r1, r1, 0x30
/* 805A20C4  4E 80 00 20 */	blr 
