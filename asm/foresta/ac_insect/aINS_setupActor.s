lbl_80594824:
/* 80594824  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80594828  7C 08 02 A6 */	mflr r0
/* 8059482C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80594830  39 61 00 30 */	addi r11, r1, 0x30
/* 80594834  4B B0 66 9D */	bl func_8009AED0
/* 80594838  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 8059483C  3B 80 00 01 */	li r28, 1
/* 80594840  7C 8B 23 78 */	mr r11, r4
/* 80594844  3C E0 80 3C */	lis r7, none_proc1@ha /* 0x803BB54C@ha */
/* 80594848  93 83 01 CC */	stw r28, 0x1cc(r3)
/* 8059484C  38 07 B5 4C */	addi r0, r7, none_proc1@l /* 0x803BB54C@l */
/* 80594850  3C A0 00 03 */	lis r5, 0x0003 /* 0x00034BC0@ha */
/* 80594854  3D 20 80 6C */	lis r9, data_806C2B80@ha /* 0x806C2B80@ha */
/* 80594858  81 0B 00 00 */	lwz r8, 0(r11)
/* 8059485C  3B E9 2B 80 */	addi r31, r9, data_806C2B80@l /* 0x806C2B80@l */
/* 80594860  3C 80 80 65 */	lis r4, lit_614@ha /* 0x80649D24@ha */
/* 80594864  38 A5 4B C0 */	addi r5, r5, 0x4BC0 /* 0x00034BC0@l */
/* 80594868  91 03 01 D0 */	stw r8, 0x1d0(r3)
/* 8059486C  39 20 00 FF */	li r9, 0xff
/* 80594870  C0 04 9D 24 */	lfs f0, lit_614@l(r4)  /* 0x80649D24@l */
/* 80594874  3B A0 FF FF */	li r29, -1
/* 80594878  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 8059487C  38 00 00 00 */	li r0, 0
/* 80594880  7C 7E 1B 78 */	mr r30, r3
/* 80594884  38 9F 04 34 */	addi r4, r31, 0x434
/* 80594888  90 A3 02 20 */	stw r5, 0x220(r3)
/* 8059488C  38 A0 00 00 */	li r5, 0
/* 80594890  38 E0 FF FF */	li r7, -1
/* 80594894  39 00 00 00 */	li r8, 0
/* 80594898  91 23 02 5C */	stw r9, 0x25c(r3)
/* 8059489C  39 20 00 00 */	li r9, 0
/* 805948A0  39 40 00 00 */	li r10, 0
/* 805948A4  89 83 02 1E */	lbz r12, 0x21e(r3)
/* 805948A8  53 8C 1F 38 */	rlwimi r12, r28, 3, 0x1c, 0x1c
/* 805948AC  99 83 02 1E */	stb r12, 0x21e(r3)
/* 805948B0  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 805948B4  B3 A3 02 68 */	sth r29, 0x268(r3)
/* 805948B8  B3 A3 02 6A */	sth r29, 0x26a(r3)
/* 805948BC  89 86 00 E4 */	lbz r12, 0xe4(r6)
/* 805948C0  91 81 00 08 */	stw r12, 8(r1)
/* 805948C4  89 86 00 E5 */	lbz r12, 0xe5(r6)
/* 805948C8  91 81 00 0C */	stw r12, 0xc(r1)
/* 805948CC  93 A1 00 10 */	stw r29, 0x10(r1)
/* 805948D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805948D4  80 0B 00 10 */	lwz r0, 0x10(r11)
/* 805948D8  7C 00 07 34 */	extsh r0, r0
/* 805948DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 805948E0  C0 2B 00 04 */	lfs f1, 4(r11)
/* 805948E4  C0 4B 00 08 */	lfs f2, 8(r11)
/* 805948E8  C0 6B 00 0C */	lfs f3, 0xc(r11)
/* 805948EC  4B DE 0D 61 */	bl Actor_init_actor_class
/* 805948F0  38 00 00 02 */	li r0, 2
/* 805948F4  38 BE 00 24 */	addi r5, r30, 0x24
/* 805948F8  38 9E 00 08 */	addi r4, r30, 8
/* 805948FC  7C 09 03 A6 */	mtctr r0
lbl_80594900:
/* 80594900  80 64 00 04 */	lwz r3, 4(r4)
/* 80594904  84 04 00 08 */	lwzu r0, 8(r4)
/* 80594908  90 65 00 04 */	stw r3, 4(r5)
/* 8059490C  94 05 00 08 */	stwu r0, 8(r5)
/* 80594910  42 00 FF F0 */	bdnz lbl_80594900
/* 80594914  80 04 00 04 */	lwz r0, 4(r4)
/* 80594918  3C 60 80 65 */	lis r3, lit_615@ha /* 0x80649D28@ha */
/* 8059491C  38 83 9D 28 */	addi r4, r3, lit_615@l /* 0x80649D28@l */
/* 80594920  7F C3 F3 78 */	mr r3, r30
/* 80594924  90 05 00 04 */	stw r0, 4(r5)
/* 80594928  C0 24 00 00 */	lfs f1, 0(r4)
/* 8059492C  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80594930  90 1E 00 DC */	stw r0, 0xdc(r30)
/* 80594934  A0 1E 00 38 */	lhz r0, 0x38(r30)
/* 80594938  B0 1E 00 E0 */	sth r0, 0xe0(r30)
/* 8059493C  4B DD F8 95 */	bl func_803741D0
/* 80594940  38 7E 00 3C */	addi r3, r30, 0x3c
/* 80594944  38 9E 00 28 */	addi r4, r30, 0x28
/* 80594948  4B E2 65 75 */	bl xyz_t_move
/* 8059494C  3C 60 80 65 */	lis r3, lit_616@ha /* 0x80649D2C@ha */
/* 80594950  3C 80 80 65 */	lis r4, lit_617@ha /* 0x80649D30@ha */
/* 80594954  38 A3 9D 2C */	addi r5, r3, lit_616@l /* 0x80649D2C@l */
/* 80594958  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059495C  38 A4 9D 30 */	addi r5, r4, lit_617@l /* 0x80649D30@l */
/* 80594960  3C 60 80 65 */	lis r3, lit_618@ha /* 0x80649D34@ha */
/* 80594964  C0 45 00 00 */	lfs f2, 0(r5)
/* 80594968  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8059496C  38 83 9D 34 */	addi r4, r3, lit_618@l /* 0x80649D34@l */
/* 80594970  C0 24 00 00 */	lfs f1, 0(r4)
/* 80594974  3C 60 80 65 */	lis r3, lit_619@ha /* 0x80649D38@ha */
/* 80594978  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8059497C  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80594980  C0 03 9D 38 */	lfs f0, lit_619@l(r3)  /* 0x80649D38@l */
/* 80594984  D0 5E 01 34 */	stfs f2, 0x134(r30)
/* 80594988  D0 3E 01 38 */	stfs f1, 0x138(r30)
/* 8059498C  D0 1E 01 3C */	stfs f0, 0x13c(r30)
/* 80594990  D0 5E 01 40 */	stfs f2, 0x140(r30)
/* 80594994  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 80594998  2C 00 00 26 */	cmpwi r0, 0x26
/* 8059499C  41 82 00 4C */	beq lbl_805949E8
/* 805949A0  40 80 00 24 */	bge lbl_805949C4
/* 805949A4  2C 00 00 0D */	cmpwi r0, 0xd
/* 805949A8  40 80 00 10 */	bge lbl_805949B8
/* 805949AC  2C 00 00 02 */	cmpwi r0, 2
/* 805949B0  40 80 00 20 */	bge lbl_805949D0
/* 805949B4  48 00 00 40 */	b lbl_805949F4
lbl_805949B8:
/* 805949B8  2C 00 00 23 */	cmpwi r0, 0x23
/* 805949BC  40 80 00 20 */	bge lbl_805949DC
/* 805949C0  48 00 00 34 */	b lbl_805949F4
lbl_805949C4:
/* 805949C4  2C 00 00 28 */	cmpwi r0, 0x28
/* 805949C8  40 80 00 2C */	bge lbl_805949F4
/* 805949CC  48 00 00 10 */	b lbl_805949DC
lbl_805949D0:
/* 805949D0  3C 60 80 65 */	lis r3, lit_620@ha /* 0x80649D3C@ha */
/* 805949D4  C0 43 9D 3C */	lfs f2, lit_620@l(r3)  /* 0x80649D3C@l */
/* 805949D8  48 00 00 24 */	b lbl_805949FC
lbl_805949DC:
/* 805949DC  3C 60 80 65 */	lis r3, lit_621@ha /* 0x80649D40@ha */
/* 805949E0  C0 43 9D 40 */	lfs f2, lit_621@l(r3)  /* 0x80649D40@l */
/* 805949E4  48 00 00 18 */	b lbl_805949FC
lbl_805949E8:
/* 805949E8  3C 60 80 65 */	lis r3, lit_622@ha /* 0x80649D44@ha */
/* 805949EC  C0 43 9D 44 */	lfs f2, lit_622@l(r3)  /* 0x80649D44@l */
/* 805949F0  48 00 00 0C */	b lbl_805949FC
lbl_805949F4:
/* 805949F4  3C 60 80 65 */	lis r3, lit_505@ha /* 0x80649D1C@ha */
/* 805949F8  C0 43 9D 1C */	lfs f2, lit_505@l(r3)  /* 0x80649D1C@l */
lbl_805949FC:
/* 805949FC  3C 80 80 65 */	lis r4, lit_615@ha /* 0x80649D28@ha */
/* 80594A00  FC 60 10 90 */	fmr f3, f2
/* 80594A04  38 A4 9D 28 */	addi r5, r4, lit_615@l /* 0x80649D28@l */
/* 80594A08  3C 60 80 37 */	lis r3, mAc_ActorShadowCircle@ha /* 0x80376F30@ha */
/* 80594A0C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80594A10  38 83 6F 30 */	addi r4, r3, mAc_ActorShadowCircle@l /* 0x80376F30@l */
/* 80594A14  7F C3 F3 78 */	mr r3, r30
/* 80594A18  4B DD F9 D9 */	bl Shape_Info_init
/* 80594A1C  3C 80 80 65 */	lis r4, lit_623@ha /* 0x80649D48@ha */
/* 80594A20  3C 60 80 59 */	lis r3, func_80594C5C@ha /* 0x80594C5C@ha */
/* 80594A24  C0 04 9D 48 */	lfs f0, lit_623@l(r4)  /* 0x80649D48@l */
/* 80594A28  38 BF 03 90 */	addi r5, r31, 0x390
/* 80594A2C  38 9F 03 58 */	addi r4, r31, 0x358
/* 80594A30  38 63 4C 5C */	addi r3, r3, func_80594C5C@l /* 0x80594C5C@l */
/* 80594A34  D0 1E 00 F8 */	stfs f0, 0xf8(r30)
/* 80594A38  38 00 00 01 */	li r0, 1
/* 80594A3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80594A40  80 DE 01 D0 */	lwz r6, 0x1d0(r30)
/* 80594A44  54 C6 10 3A */	slwi r6, r6, 2
/* 80594A48  7C A5 30 2E */	lwzx r5, r5, r6
/* 80594A4C  54 A5 10 3A */	slwi r5, r5, 2
/* 80594A50  7C 84 28 2E */	lwzx r4, r4, r5
/* 80594A54  90 9E 01 64 */	stw r4, 0x164(r30)
/* 80594A58  90 7E 01 D4 */	stw r3, 0x1d4(r30)
/* 80594A5C  98 1E 00 B5 */	stb r0, 0xb5(r30)
/* 80594A60  4B B0 64 BD */	bl func_8009AF1C
/* 80594A64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80594A68  7C 08 03 A6 */	mtlr r0
/* 80594A6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80594A70  4E 80 00 20 */	blr 