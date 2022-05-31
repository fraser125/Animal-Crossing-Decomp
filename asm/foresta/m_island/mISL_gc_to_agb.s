lbl_803B55E4:
/* 803B55E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B55E8  7C 08 02 A6 */	mflr r0
/* 803B55EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B55F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803B55F4  4B CE 58 E1 */	bl func_8009AED4
/* 803B55F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 803B55FC  7C 9D 23 78 */	mr r29, r4
/* 803B5600  41 82 01 84 */	beq lbl_803B5784
/* 803B5604  7F A3 EB 78 */	mr r3, r29
/* 803B5608  38 9F 00 08 */	addi r4, r31, 8
/* 803B560C  38 A0 00 08 */	li r5, 8
/* 803B5610  4B CA 7A 0D */	bl func_8005D01C
/* 803B5614  38 00 00 00 */	li r0, 0
/* 803B5618  38 7F 00 14 */	addi r3, r31, 0x14
/* 803B561C  98 1F 00 13 */	stb r0, 0x13(r31)
/* 803B5620  38 9D 00 08 */	addi r4, r29, 8
/* 803B5624  4B FF ED 7D */	bl mISL_gc_to_agb_iandinfo
/* 803B5628  38 7F 00 24 */	addi r3, r31, 0x24
/* 803B562C  38 9D 00 14 */	addi r4, r29, 0x14
/* 803B5630  4B FF EF 59 */	bl mISL_gc_to_agb_fgblock
/* 803B5634  38 7F 04 28 */	addi r3, r31, 0x428
/* 803B5638  38 9D 04 18 */	addi r4, r29, 0x418
/* 803B563C  4B FF F3 41 */	bl mISL_gc_to_agb_cottage
/* 803B5640  38 7D 0C E0 */	addi r3, r29, 0xce0
/* 803B5644  38 9F 0D 00 */	addi r4, r31, 0xd00
/* 803B5648  38 A0 02 20 */	li r5, 0x220
/* 803B564C  4B CA 79 D1 */	bl func_8005D01C
/* 803B5650  38 7F 0F 20 */	addi r3, r31, 0xf20
/* 803B5654  38 9D 0F 00 */	addi r4, r29, 0xf00
/* 803B5658  4B FF FC 4D */	bl mISL_gc_to_agb_animal
/* 803B565C  38 7F 18 F8 */	addi r3, r31, 0x18f8
/* 803B5660  38 9D 18 88 */	addi r4, r29, 0x1888
/* 803B5664  38 A0 00 20 */	li r5, 0x20
/* 803B5668  4B FF EA B5 */	bl mISL_short
/* 803B566C  38 7D 18 C8 */	addi r3, r29, 0x18c8
/* 803B5670  38 9F 19 38 */	addi r4, r31, 0x1938
/* 803B5674  38 A0 00 02 */	li r5, 2
/* 803B5678  4B CA 79 A5 */	bl func_8005D01C
/* 803B567C  38 7F 19 3C */	addi r3, r31, 0x193c
/* 803B5680  38 9D 18 CA */	addi r4, r29, 0x18ca
/* 803B5684  4B FF F2 15 */	bl mISL_gc_to_agb_time
/* 803B5688  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B568C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B5690  3C 63 00 03 */	addis r3, r3, 3
/* 803B5694  A8 03 DB A2 */	lha r0, -0x245e(r3)
/* 803B5698  2C 00 00 01 */	cmpwi r0, 1
/* 803B569C  40 82 00 10 */	bne lbl_803B56AC
/* 803B56A0  38 00 00 01 */	li r0, 1
/* 803B56A4  98 1F 19 3A */	stb r0, 0x193a(r31)
/* 803B56A8  48 00 00 0C */	b lbl_803B56B4
lbl_803B56AC:
/* 803B56AC  38 00 00 00 */	li r0, 0
/* 803B56B0  98 1F 19 3A */	stb r0, 0x193a(r31)
lbl_803B56B4:
/* 803B56B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B56B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B56BC  3C 63 00 02 */	addis r3, r3, 2
/* 803B56C0  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803B56C4  4B FF EB 19 */	bl mISL_get_npc_idx
/* 803B56C8  90 61 00 08 */	stw r3, 8(r1)
/* 803B56CC  38 7F 19 44 */	addi r3, r31, 0x1944
/* 803B56D0  38 81 00 08 */	addi r4, r1, 8
/* 803B56D4  38 A0 00 01 */	li r5, 1
/* 803B56D8  4B FF EA 21 */	bl mISL_int
/* 803B56DC  38 60 10 00 */	li r3, 0x1000
/* 803B56E0  38 80 00 20 */	li r4, 0x20
/* 803B56E4  48 00 6D 45 */	bl func_803BC428
/* 803B56E8  88 1D 18 E0 */	lbz r0, 0x18e0(r29)
/* 803B56EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 803B56F0  98 1F 00 10 */	stb r0, 0x10(r31)
/* 803B56F4  41 82 00 5C */	beq lbl_803B5750
/* 803B56F8  38 80 10 00 */	li r4, 0x1000
/* 803B56FC  4B CA 79 6D */	bl bzero
/* 803B5700  80 A1 00 08 */	lwz r5, 8(r1)
/* 803B5704  7F C4 F3 78 */	mr r4, r30
/* 803B5708  38 7F 29 48 */	addi r3, r31, 0x2948
/* 803B570C  4B FF EB 21 */	bl mISL_get_npc_tex
/* 803B5710  7F C3 F3 78 */	mr r3, r30
/* 803B5714  38 80 10 00 */	li r4, 0x1000
/* 803B5718  4B CA 79 51 */	bl bzero
/* 803B571C  80 A1 00 08 */	lwz r5, 8(r1)
/* 803B5720  7F C4 F3 78 */	mr r4, r30
/* 803B5724  38 7F 39 48 */	addi r3, r31, 0x3948
/* 803B5728  4B FF EB 81 */	bl mISL_get_npc_pal
/* 803B572C  7F C3 F3 78 */	mr r3, r30
/* 803B5730  38 80 10 00 */	li r4, 0x1000
/* 803B5734  4B CA 79 35 */	bl bzero
/* 803B5738  88 BF 00 10 */	lbz r5, 0x10(r31)
/* 803B573C  7F C4 F3 78 */	mr r4, r30
/* 803B5740  38 7F 19 48 */	addi r3, r31, 0x1948
/* 803B5744  4B FF EB E1 */	bl mISL_get_earth_tex
/* 803B5748  7F C3 F3 78 */	mr r3, r30
/* 803B574C  48 00 6D 69 */	bl zelda_free
lbl_803B5750:
/* 803B5750  88 1D 18 E1 */	lbz r0, 0x18e1(r29)
/* 803B5754  38 7F 00 14 */	addi r3, r31, 0x14
/* 803B5758  38 80 00 10 */	li r4, 0x10
/* 803B575C  98 1F 39 7D */	stb r0, 0x397d(r31)
/* 803B5760  88 1D 18 E2 */	lbz r0, 0x18e2(r29)
/* 803B5764  98 1F 39 7E */	stb r0, 0x397e(r31)
/* 803B5768  4B FF FD FD */	bl mISL_ReturnCheckSum
/* 803B576C  88 BF 39 7F */	lbz r5, 0x397f(r31)
/* 803B5770  7C 66 1B 78 */	mr r6, r3
/* 803B5774  7F E3 FB 78 */	mr r3, r31
/* 803B5778  38 80 39 80 */	li r4, 0x3980
/* 803B577C  4B FF FE 11 */	bl mISL_GetFlatCheckSum
/* 803B5780  98 7F 39 7F */	stb r3, 0x397f(r31)
lbl_803B5784:
/* 803B5784  39 61 00 20 */	addi r11, r1, 0x20
/* 803B5788  4B CE 57 99 */	bl func_8009AF20
/* 803B578C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B5790  7C 08 03 A6 */	mtlr r0
/* 803B5794  38 21 00 20 */	addi r1, r1, 0x20
/* 803B5798  4E 80 00 20 */	blr 
