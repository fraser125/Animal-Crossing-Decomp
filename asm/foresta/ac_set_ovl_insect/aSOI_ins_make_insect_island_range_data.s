lbl_8049AFC4:
/* 8049AFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049AFC8  3C A0 80 69 */	lis r5, l_insect_island@ha /* 0x8068E184@ha */
/* 8049AFCC  54 86 18 38 */	slwi r6, r4, 3
/* 8049AFD0  3C 80 80 64 */	lis r4, lit_575@ha /* 0x80644D24@ha */
/* 8049AFD4  38 A5 E1 84 */	addi r5, r5, l_insect_island@l /* 0x8068E184@l */
/* 8049AFD8  88 E3 02 0C */	lbz r7, 0x20c(r3)
/* 8049AFDC  7C A5 32 14 */	add r5, r5, r6
/* 8049AFE0  3C 00 43 30 */	lis r0, 0x4330
/* 8049AFE4  1C C7 00 0C */	mulli r6, r7, 0xc
/* 8049AFE8  89 25 00 00 */	lbz r9, 0(r5)
/* 8049AFEC  81 05 00 04 */	lwz r8, 4(r5)
/* 8049AFF0  7C A7 4A 14 */	add r5, r7, r9
/* 8049AFF4  C8 24 4D 24 */	lfd f1, lit_575@l(r4)  /* 0x80644D24@l */
/* 8049AFF8  98 A3 02 0C */	stb r5, 0x20c(r3)
/* 8049AFFC  7C 83 32 14 */	add r4, r3, r6
/* 8049B000  7D 29 03 A6 */	mtctr r9
/* 8049B004  2C 09 00 00 */	cmpwi r9, 0
/* 8049B008  41 82 00 38 */	beq lbl_8049B040
lbl_8049B00C:
/* 8049B00C  80 68 00 00 */	lwz r3, 0(r8)
/* 8049B010  90 01 00 08 */	stw r0, 8(r1)
/* 8049B014  90 64 00 00 */	stw r3, 0(r4)
/* 8049B018  88 68 00 04 */	lbz r3, 4(r8)
/* 8049B01C  98 64 00 04 */	stb r3, 4(r4)
/* 8049B020  88 68 00 05 */	lbz r3, 5(r8)
/* 8049B024  39 08 00 08 */	addi r8, r8, 8
/* 8049B028  90 61 00 0C */	stw r3, 0xc(r1)
/* 8049B02C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049B030  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049B034  D0 04 00 08 */	stfs f0, 8(r4)
/* 8049B038  38 84 00 0C */	addi r4, r4, 0xc
/* 8049B03C  42 00 FF D0 */	bdnz lbl_8049B00C
lbl_8049B040:
/* 8049B040  38 21 00 10 */	addi r1, r1, 0x10
/* 8049B044  4E 80 00 20 */	blr 
