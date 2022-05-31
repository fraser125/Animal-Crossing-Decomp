lbl_80521F48:
/* 80521F48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80521F4C  7C 08 02 A6 */	mflr r0
/* 80521F50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80521F54  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80521F58  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80521F5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80521F60  4B B7 8F 69 */	bl func_8009AEC8
/* 80521F64  3C C0 80 65 */	lis r6, lit_513@ha /* 0x80649158@ha */
/* 80521F68  3C A0 81 1D */	lis r5, pf_string@ha /* 0x811D3968@ha */
/* 80521F6C  38 E6 91 58 */	addi r7, r6, lit_513@l /* 0x80649158@l */
/* 80521F70  7C 7F 1B 78 */	mr r31, r3
/* 80521F74  3C C0 80 6A */	lis r6, table@ha /* 0x806A0A18@ha */
/* 80521F78  C3 E7 00 00 */	lfs f31, 0(r7)
/* 80521F7C  3B A5 39 68 */	addi r29, r5, pf_string@l /* 0x811D3968@l */
/* 80521F80  7C 9A 23 78 */	mr r26, r4
/* 80521F84  3B 86 0A 18 */	addi r28, r6, table@l /* 0x806A0A18@l */
/* 80521F88  3B 60 00 00 */	li r27, 0
/* 80521F8C  3B C0 00 00 */	li r30, 0
lbl_80521F90:
/* 80521F90  4B B3 AD 65 */	bl fqrand
/* 80521F94  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80521F98  7C 1C F0 2E */	lwzx r0, r28, r30
/* 80521F9C  7F A3 EB 78 */	mr r3, r29
/* 80521FA0  38 80 00 10 */	li r4, 0x10
/* 80521FA4  FC 00 00 1E */	fctiwz f0, f0
/* 80521FA8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80521FAC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80521FB0  7C A0 2A 14 */	add r5, r0, r5
/* 80521FB4  4B EC CD 19 */	bl mString_Load_StringFromRom
/* 80521FB8  7F 63 DB 78 */	mr r3, r27
/* 80521FBC  7F A4 EB 78 */	mr r4, r29
/* 80521FC0  38 A0 00 10 */	li r5, 0x10
/* 80521FC4  4B E8 F9 95 */	bl mHandbill_Set_free_str
/* 80521FC8  3B 7B 00 01 */	addi r27, r27, 1
/* 80521FCC  3B DE 00 04 */	addi r30, r30, 4
/* 80521FD0  2C 1B 00 04 */	cmpwi r27, 4
/* 80521FD4  41 80 FF BC */	blt lbl_80521F90
/* 80521FD8  3C 60 80 6A */	lis r3, kekka_table@ha /* 0x806A0A28@ha */
/* 80521FDC  57 40 10 3A */	slwi r0, r26, 2
/* 80521FE0  38 A3 0A 28 */	addi r5, r3, kekka_table@l /* 0x806A0A28@l */
/* 80521FE4  3C C0 81 1D */	lis r6, pf_string@ha /* 0x811D3968@ha */
/* 80521FE8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80521FEC  38 80 00 10 */	li r4, 0x10
/* 80521FF0  38 66 39 68 */	addi r3, r6, pf_string@l /* 0x811D3968@l */
/* 80521FF4  38 A5 02 C1 */	addi r5, r5, 0x2c1
/* 80521FF8  4B EC CC D5 */	bl mString_Load_StringFromRom
/* 80521FFC  3C 80 81 1D */	lis r4, pf_string@ha /* 0x811D3968@ha */
/* 80522000  38 60 00 04 */	li r3, 4
/* 80522004  38 84 39 68 */	addi r4, r4, pf_string@l /* 0x811D3968@l */
/* 80522008  38 A0 00 10 */	li r5, 0x10
/* 8052200C  4B E8 F9 4D */	bl mHandbill_Set_free_str
/* 80522010  4B B3 AC E5 */	bl fqrand
/* 80522014  3C 80 80 65 */	lis r4, lit_514@ha /* 0x8064915C@ha */
/* 80522018  38 7F 00 32 */	addi r3, r31, 0x32
/* 8052201C  38 A4 91 5C */	addi r5, r4, lit_514@l /* 0x8064915C@l */
/* 80522020  38 DF 00 4A */	addi r6, r31, 0x4a
/* 80522024  C0 05 00 00 */	lfs f0, 0(r5)
/* 80522028  38 81 00 08 */	addi r4, r1, 8
/* 8052202C  38 BF 01 0A */	addi r5, r31, 0x10a
/* 80522030  EC 00 00 72 */	fmuls f0, f0, f1
/* 80522034  FC 00 00 1E */	fctiwz f0, f0
/* 80522038  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8052203C  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 80522040  38 E7 00 72 */	addi r7, r7, 0x72
/* 80522044  4B E9 06 F1 */	bl mHandbill_Load_HandbillFromRom
/* 80522048  38 00 00 00 */	li r0, 0
/* 8052204C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80522050  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 80522054  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80522058  38 00 00 05 */	li r0, 5
/* 8052205C  7F E3 FB 78 */	mr r3, r31
/* 80522060  80 A1 00 08 */	lwz r5, 8(r1)
/* 80522064  3C 84 00 02 */	addis r4, r4, 2
/* 80522068  98 BF 00 2F */	stb r5, 0x2f(r31)
/* 8052206C  98 1F 00 30 */	stb r0, 0x30(r31)
/* 80522070  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80522074  4B E9 A7 6D */	bl mMl_set_to_plname
/* 80522078  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8052207C  39 61 00 30 */	addi r11, r1, 0x30
/* 80522080  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80522084  4B B7 8E 91 */	bl func_8009AF14
/* 80522088  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052208C  7C 08 03 A6 */	mtlr r0
/* 80522090  38 21 00 40 */	addi r1, r1, 0x40
/* 80522094  4E 80 00 20 */	blr 
