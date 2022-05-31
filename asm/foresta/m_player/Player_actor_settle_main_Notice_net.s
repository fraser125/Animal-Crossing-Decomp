lbl_804F41DC:
/* 804F41DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F41E0  7C 08 02 A6 */	mflr r0
/* 804F41E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F41E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F41EC  93 C1 00 08 */	stw r30, 8(r1)
/* 804F41F0  7C 7E 1B 78 */	mr r30, r3
/* 804F41F4  83 E3 0F 2C */	lwz r31, 0xf2c(r3)
/* 804F41F8  2C 1F 00 00 */	cmpwi r31, 0
/* 804F41FC  40 80 00 08 */	bge lbl_804F4204
/* 804F4200  3B E0 00 08 */	li r31, 8
lbl_804F4204:
/* 804F4204  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 804F4208  2C 00 00 00 */	cmpwi r0, 0
/* 804F420C  41 82 00 14 */	beq lbl_804F4220
/* 804F4210  38 60 00 4B */	li r3, 0x4b
/* 804F4214  38 80 01 68 */	li r4, 0x168
/* 804F4218  4B E8 80 19 */	bl mBGMPsComp_delete_ps_fanfare
/* 804F421C  48 00 00 10 */	b lbl_804F422C
lbl_804F4220:
/* 804F4220  38 60 00 28 */	li r3, 0x28
/* 804F4224  38 80 01 68 */	li r4, 0x168
/* 804F4228  4B E8 80 09 */	bl mBGMPsComp_delete_ps_fanfare
lbl_804F422C:
/* 804F422C  2C 1F 00 08 */	cmpwi r31, 8
/* 804F4230  40 82 00 34 */	bne lbl_804F4264
/* 804F4234  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F4238  38 80 00 00 */	li r4, 0
/* 804F423C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F4240  3C 63 00 03 */	addis r3, r3, 3
/* 804F4244  98 83 88 39 */	stb r4, -0x77c7(r3)
/* 804F4248  88 1E 12 1E */	lbz r0, 0x121e(r30)
/* 804F424C  7C 00 07 75 */	extsb. r0, r0
/* 804F4250  41 82 00 14 */	beq lbl_804F4264
/* 804F4254  98 9E 12 1E */	stb r4, 0x121e(r30)
/* 804F4258  38 60 00 43 */	li r3, 0x43
/* 804F425C  38 80 00 00 */	li r4, 0
/* 804F4260  4B E8 81 21 */	bl mBGMPsComp_delete_ps_happening
lbl_804F4264:
/* 804F4264  80 1E 0D 1C */	lwz r0, 0xd1c(r30)
/* 804F4268  2C 00 00 00 */	cmpwi r0, 0
/* 804F426C  40 82 00 34 */	bne lbl_804F42A0
/* 804F4270  80 9E 0E 70 */	lwz r4, 0xe70(r30)
/* 804F4274  28 04 00 00 */	cmplwi r4, 0
/* 804F4278  41 82 00 28 */	beq lbl_804F42A0
/* 804F427C  88 1E 0E 74 */	lbz r0, 0xe74(r30)
/* 804F4280  7C 00 07 75 */	extsb. r0, r0
/* 804F4284  40 82 00 1C */	bne lbl_804F42A0
/* 804F4288  3C 60 80 65 */	lis r3, lit_11384@ha /* 0x80648508@ha */
/* 804F428C  38 00 00 01 */	li r0, 1
/* 804F4290  C0 03 85 08 */	lfs f0, lit_11384@l(r3)  /* 0x80648508@l */
/* 804F4294  D0 04 01 F0 */	stfs f0, 0x1f0(r4)
/* 804F4298  98 04 00 B5 */	stb r0, 0xb5(r4)
/* 804F429C  B0 04 00 24 */	sth r0, 0x24(r4)
lbl_804F42A0:
/* 804F42A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F42A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F42A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F42AC  7C 08 03 A6 */	mtlr r0
/* 804F42B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F42B4  4E 80 00 20 */	blr 
