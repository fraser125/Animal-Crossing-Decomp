lbl_803ECA38:
/* 803ECA38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803ECA3C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803ECA40  3C A4 00 02 */	addis r5, r4, 2
/* 803ECA44  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 803ECA48  A0 05 61 26 */	lhz r0, 0x6126(r5)
/* 803ECA4C  B0 04 23 BE */	sth r0, 0x23be(r4)
/* 803ECA50  88 05 61 25 */	lbz r0, 0x6125(r5)
/* 803ECA54  98 04 23 C0 */	stb r0, 0x23c0(r4)
/* 803ECA58  88 05 61 23 */	lbz r0, 0x6123(r5)
/* 803ECA5C  98 04 23 C1 */	stb r0, 0x23c1(r4)
/* 803ECA60  98 64 23 C2 */	stb r3, 0x23c2(r4)
/* 803ECA64  4E 80 00 20 */	blr 
