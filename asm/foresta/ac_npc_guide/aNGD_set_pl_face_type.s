lbl_805533A4:
/* 805533A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805533A8  7C 08 02 A6 */	mflr r0
/* 805533AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805533B0  80 A3 09 BC */	lwz r5, 0x9bc(r3)
/* 805533B4  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805533B8  40 82 00 24 */	bne lbl_805533DC
/* 805533BC  4B B0 99 39 */	bl fqrand
/* 805533C0  3C 60 80 65 */	lis r3, lit_628@ha /* 0x80649598@ha */
/* 805533C4  C0 03 95 98 */	lfs f0, lit_628@l(r3)  /* 0x80649598@l */
/* 805533C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805533CC  FC 00 00 1E */	fctiwz f0, f0
/* 805533D0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805533D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805533D8  48 00 00 38 */	b lbl_80553410
lbl_805533DC:
/* 805533DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805533E0  3C 60 80 6A */	lis r3, face_type_table@ha /* 0x806A6298@ha */
/* 805533E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805533E8  7C A0 0E 70 */	srawi r0, r5, 1
/* 805533EC  3C 84 00 02 */	addis r4, r4, 2
/* 805533F0  38 63 62 98 */	addi r3, r3, face_type_table@l /* 0x806A6298@l */
/* 805533F4  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 805533F8  54 00 10 3A */	slwi r0, r0, 2
/* 805533FC  88 84 00 14 */	lbz r4, 0x14(r4)
/* 80553400  7C 84 07 74 */	extsb r4, r4
/* 80553404  54 84 28 34 */	slwi r4, r4, 5
/* 80553408  7C 63 22 14 */	add r3, r3, r4
/* 8055340C  7C 03 00 2E */	lwzx r0, r3, r0
lbl_80553410:
/* 80553410  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80553414  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80553418  3C 63 00 02 */	addis r3, r3, 2
/* 8055341C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80553420  98 03 00 15 */	stb r0, 0x15(r3)
/* 80553424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553428  7C 08 03 A6 */	mtlr r0
/* 8055342C  38 21 00 10 */	addi r1, r1, 0x10
/* 80553430  4E 80 00 20 */	blr 
