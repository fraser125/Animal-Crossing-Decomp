lbl_803F2A14:
/* 803F2A14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F2A18  3C 80 80 64 */	lis r4, lit_390@ha /* 0x80643268@ha */
/* 803F2A1C  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803F2A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F2A24  3C C5 00 03 */	addis r6, r5, 3
/* 803F2A28  38 00 00 01 */	li r0, 1
/* 803F2A2C  C0 04 32 68 */	lfs f0, lit_390@l(r4)  /* 0x80643268@l */
/* 803F2A30  3C 60 80 64 */	lis r3, lit_497@ha /* 0x806432A0@ha */
/* 803F2A34  98 06 88 44 */	stb r0, -0x77bc(r6)
/* 803F2A38  3C 80 80 64 */	lis r4, lit_480@ha /* 0x8064328C@ha */
/* 803F2A3C  C0 43 32 A0 */	lfs f2, lit_497@l(r3)  /* 0x806432A0@l */
/* 803F2A40  3C A5 00 02 */	addis r5, r5, 2
/* 803F2A44  D0 06 88 4C */	stfs f0, -0x77b4(r6)
/* 803F2A48  3C 60 80 64 */	lis r3, lit_481@ha /* 0x80643290@ha */
/* 803F2A4C  C0 03 32 90 */	lfs f0, lit_481@l(r3)  /* 0x80643290@l */
/* 803F2A50  98 05 65 23 */	stb r0, 0x6523(r5)
/* 803F2A54  38 A0 00 00 */	li r5, 0
/* 803F2A58  C0 24 32 8C */	lfs f1, lit_480@l(r4)  /* 0x8064328C@l */
/* 803F2A5C  98 A6 88 40 */	stb r5, -0x77c0(r6)
/* 803F2A60  D0 41 00 08 */	stfs f2, 8(r1)
/* 803F2A64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803F2A68  80 01 00 08 */	lwz r0, 8(r1)
/* 803F2A6C  98 A6 88 41 */	stb r5, -0x77bf(r6)
/* 803F2A70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803F2A74  90 06 88 50 */	stw r0, -0x77b0(r6)
/* 803F2A78  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 803F2A7C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803F2A80  90 66 88 54 */	stw r3, -0x77ac(r6)
/* 803F2A84  90 06 88 58 */	stw r0, -0x77a8(r6)
/* 803F2A88  38 21 00 20 */	addi r1, r1, 0x20
/* 803F2A8C  4E 80 00 20 */	blr 