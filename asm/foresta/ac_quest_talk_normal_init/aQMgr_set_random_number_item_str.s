lbl_804951C4:
/* 804951C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804951C8  7C 08 02 A6 */	mflr r0
/* 804951CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804951D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804951D4  4B C0 5C FD */	bl func_8009AED0
/* 804951D8  7C 7C 1B 78 */	mr r28, r3
/* 804951DC  7C 9D 23 78 */	mr r29, r4
/* 804951E0  7C BE 2B 78 */	mr r30, r5
/* 804951E4  7C DF 33 78 */	mr r31, r6
/* 804951E8  4B BC 7B 0D */	bl fqrand
/* 804951EC  7C 9E F8 50 */	subf r4, r30, r31
/* 804951F0  3C 00 43 30 */	lis r0, 0x4330
/* 804951F4  90 81 00 0C */	stw r4, 0xc(r1)
/* 804951F8  3C 60 80 64 */	lis r3, lit_902@ha /* 0x80644C7C@ha */
/* 804951FC  C8 43 4C 7C */	lfd f2, lit_902@l(r3)  /* 0x80644C7C@l */
/* 80495200  90 01 00 08 */	stw r0, 8(r1)
/* 80495204  C8 01 00 08 */	lfd f0, 8(r1)
/* 80495208  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049520C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80495210  4B C0 5B 95 */	bl func_8009ADA4
/* 80495214  7C 9E 1A 14 */	add r4, r30, r3
/* 80495218  7F 83 E3 78 */	mr r3, r28
/* 8049521C  7F A5 EB 78 */	mr r5, r29
/* 80495220  4B FF C3 8D */	bl aQMgr_set_number_item_str
/* 80495224  39 61 00 20 */	addi r11, r1, 0x20
/* 80495228  4B C0 5C F5 */	bl func_8009AF1C
/* 8049522C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80495230  7C 08 03 A6 */	mtlr r0
/* 80495234  38 21 00 20 */	addi r1, r1, 0x20
/* 80495238  4E 80 00 20 */	blr 
