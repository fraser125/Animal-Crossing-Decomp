lbl_805891CC:
/* 805891CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805891D0  7C 08 02 A6 */	mflr r0
/* 805891D4  3C A0 80 59 */	lis r5, aTS0_think_proc@ha /* 0x80589198@ha */
/* 805891D8  38 E0 01 37 */	li r7, 0x137
/* 805891DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805891E0  38 05 91 98 */	addi r0, r5, aTS0_think_proc@l /* 0x80589198@l */
/* 805891E4  38 C0 00 01 */	li r6, 1
/* 805891E8  38 A0 00 00 */	li r5, 0
/* 805891EC  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 805891F0  38 00 FF FF */	li r0, -1
/* 805891F4  90 E3 08 40 */	stw r7, 0x840(r3)
/* 805891F8  98 C3 09 59 */	stb r6, 0x959(r3)
/* 805891FC  98 A3 08 31 */	stb r5, 0x831(r3)
/* 80589200  90 03 08 F4 */	stw r0, 0x8f4(r3)
/* 80589204  A0 03 00 06 */	lhz r0, 6(r3)
/* 80589208  28 00 D0 78 */	cmplwi r0, 0xd078
/* 8058920C  41 82 00 0C */	beq lbl_80589218
/* 80589210  38 00 00 02 */	li r0, 2
/* 80589214  98 03 09 73 */	stb r0, 0x973(r3)
lbl_80589218:
/* 80589218  38 00 00 05 */	li r0, 5
/* 8058921C  3C A0 80 65 */	lis r5, data_80649B14@ha /* 0x80649B14@ha */
/* 80589220  B0 03 09 74 */	sth r0, 0x974(r3)
/* 80589224  39 05 9B 14 */	addi r8, r5, data_80649B14@l /* 0x80649B14@l */
/* 80589228  38 00 00 FE */	li r0, 0xfe
/* 8058922C  3C A0 80 65 */	lis r5, lit_625@ha /* 0x80649B2C@ha */
/* 80589230  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 80589234  38 E5 9B 2C */	addi r7, r5, lit_625@l /* 0x80649B2C@l */
/* 80589238  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D04E@ha */
/* 8058923C  C0 48 00 00 */	lfs f2, 0(r8)
/* 80589240  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80589244  38 05 D0 4E */	addi r0, r5, 0xD04E /* 0x0000D04E@l */
/* 80589248  3C C0 80 6C */	lis r6, def_angle@ha /* 0x806C1FB4@ha */
/* 8058924C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80589250  EC 20 10 2A */	fadds f1, f0, f2
/* 80589254  39 06 1F B4 */	addi r8, r6, def_angle@l /* 0x806C1FB4@l */
/* 80589258  39 20 00 01 */	li r9, 1
/* 8058925C  C0 07 00 00 */	lfs f0, 0(r7)
/* 80589260  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80589264  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80589268  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8058926C  3C E5 00 02 */	addis r7, r5, 2
/* 80589270  38 A0 00 09 */	li r5, 9
/* 80589274  38 C0 00 00 */	li r6, 0
/* 80589278  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8058927C  EC 21 10 2A */	fadds f1, f1, f2
/* 80589280  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80589284  99 23 07 52 */	stb r9, 0x752(r3)
/* 80589288  D0 03 07 64 */	stfs f0, 0x764(r3)
/* 8058928C  81 24 00 A0 */	lwz r9, 0xa0(r4)
/* 80589290  39 29 00 01 */	addi r9, r9, 1
/* 80589294  91 23 09 AC */	stw r9, 0x9ac(r3)
/* 80589298  A1 23 00 06 */	lhz r9, 6(r3)
/* 8058929C  7D 29 00 50 */	subf r9, r9, r0
/* 805892A0  30 09 FF FF */	addic r0, r9, -1
/* 805892A4  7C 00 49 10 */	subfe r0, r0, r9
/* 805892A8  54 00 08 3C */	slwi r0, r0, 1
/* 805892AC  7C 08 02 AE */	lhax r0, r8, r0
/* 805892B0  B0 03 00 DE */	sth r0, 0xde(r3)
/* 805892B4  B0 03 00 36 */	sth r0, 0x36(r3)
/* 805892B8  B0 03 09 24 */	sth r0, 0x924(r3)
/* 805892BC  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 805892C0  81 87 01 20 */	lwz r12, 0x120(r7)
/* 805892C4  7D 89 03 A6 */	mtctr r12
/* 805892C8  4E 80 04 21 */	bctrl 
/* 805892CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805892D0  7C 08 03 A6 */	mtlr r0
/* 805892D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805892D8  4E 80 00 20 */	blr 
