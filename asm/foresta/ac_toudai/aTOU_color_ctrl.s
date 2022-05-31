lbl_805BEF5C:
/* 805BEF5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BEF60  7C 08 02 A6 */	mflr r0
/* 805BEF64  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BEF68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805BEF6C  7C 7F 1B 78 */	mr r31, r3
/* 805BEF70  80 03 02 BC */	lwz r0, 0x2bc(r3)
/* 805BEF74  2C 00 00 00 */	cmpwi r0, 0
/* 805BEF78  40 82 02 0C */	bne lbl_805BF184
/* 805BEF7C  3C 60 80 65 */	lis r3, lit_634@ha /* 0x8064ABDC@ha */
/* 805BEF80  3C 80 80 65 */	lis r4, lit_635@ha /* 0x8064ABE4@ha */
/* 805BEF84  38 A3 AB DC */	addi r5, r3, lit_634@l /* 0x8064ABDC@l */
/* 805BEF88  C8 E4 AB E4 */	lfd f7, lit_635@l(r4)  /* 0x8064ABE4@l */
/* 805BEF8C  C9 05 00 00 */	lfd f8, 0(r5)
/* 805BEF90  3C 60 80 65 */	lis r3, lit_636@ha /* 0x8064ABEC@ha */
/* 805BEF94  39 03 AB EC */	addi r8, r3, lit_636@l /* 0x8064ABEC@l */
/* 805BEF98  3C A0 80 65 */	lis r5, lit_513@ha /* 0x8064ABD4@ha */
/* 805BEF9C  FC 20 40 34 */	frsqrte f1, f8
/* 805BEFA0  3C 60 80 65 */	lis r3, lit_637@ha /* 0x8064ABF4@ha */
/* 805BEFA4  38 C3 AB F4 */	addi r6, r3, lit_637@l /* 0x8064ABF4@l */
/* 805BEFA8  C8 C8 00 00 */	lfd f6, 0(r8)
/* 805BEFAC  3C 80 80 65 */	lis r4, lit_638@ha /* 0x8064ABF8@ha */
/* 805BEFB0  38 E5 AB D4 */	addi r7, r5, lit_513@l /* 0x8064ABD4@l */
/* 805BEFB4  FC 01 00 72 */	fmul f0, f1, f1
/* 805BEFB8  38 A4 AB F8 */	addi r5, r4, lit_638@l /* 0x8064ABF8@l */
/* 805BEFBC  3C 60 80 65 */	lis r3, lit_639@ha /* 0x8064ABFC@ha */
/* 805BEFC0  C0 65 00 00 */	lfs f3, 0(r5)
/* 805BEFC4  38 83 AB FC */	addi r4, r3, lit_639@l /* 0x8064ABFC@l */
/* 805BEFC8  FC A7 00 72 */	fmul f5, f7, f1
/* 805BEFCC  FC 48 00 32 */	fmul f2, f8, f0
/* 805BEFD0  C0 06 00 00 */	lfs f0, 0(r6)
/* 805BEFD4  C0 27 00 00 */	lfs f1, 0(r7)
/* 805BEFD8  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805BEFDC  C0 84 00 00 */	lfs f4, 0(r4)
/* 805BEFE0  FC 46 10 28 */	fsub f2, f6, f2
/* 805BEFE4  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BEFE8  FC 45 01 72 */	fmul f2, f5, f5
/* 805BEFEC  FC A7 01 72 */	fmul f5, f7, f5
/* 805BEFF0  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BEFF4  FC 46 10 28 */	fsub f2, f6, f2
/* 805BEFF8  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BEFFC  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF000  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF004  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF008  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF00C  FC 45 00 B2 */	fmul f2, f5, f2
/* 805BF010  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF014  FC 40 10 18 */	frsp f2, f2
/* 805BF018  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 805BF01C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 805BF020  EC 40 10 28 */	fsubs f2, f0, f2
/* 805BF024  4B DF C1 8D */	bl add_calc
/* 805BF028  3C 60 80 65 */	lis r3, lit_634@ha /* 0x8064ABDC@ha */
/* 805BF02C  3C 80 80 65 */	lis r4, lit_635@ha /* 0x8064ABE4@ha */
/* 805BF030  38 A3 AB DC */	addi r5, r3, lit_634@l /* 0x8064ABDC@l */
/* 805BF034  C8 E4 AB E4 */	lfd f7, lit_635@l(r4)  /* 0x8064ABE4@l */
/* 805BF038  C9 05 00 00 */	lfd f8, 0(r5)
/* 805BF03C  3C 60 80 65 */	lis r3, lit_636@ha /* 0x8064ABEC@ha */
/* 805BF040  39 03 AB EC */	addi r8, r3, lit_636@l /* 0x8064ABEC@l */
/* 805BF044  3C A0 80 65 */	lis r5, lit_513@ha /* 0x8064ABD4@ha */
/* 805BF048  FC 20 40 34 */	frsqrte f1, f8
/* 805BF04C  3C 60 80 65 */	lis r3, lit_637@ha /* 0x8064ABF4@ha */
/* 805BF050  38 C3 AB F4 */	addi r6, r3, lit_637@l /* 0x8064ABF4@l */
/* 805BF054  C8 C8 00 00 */	lfd f6, 0(r8)
/* 805BF058  3C 80 80 65 */	lis r4, lit_638@ha /* 0x8064ABF8@ha */
/* 805BF05C  38 E5 AB D4 */	addi r7, r5, lit_513@l /* 0x8064ABD4@l */
/* 805BF060  FC 01 00 72 */	fmul f0, f1, f1
/* 805BF064  38 A4 AB F8 */	addi r5, r4, lit_638@l /* 0x8064ABF8@l */
/* 805BF068  3C 60 80 65 */	lis r3, lit_639@ha /* 0x8064ABFC@ha */
/* 805BF06C  C0 65 00 00 */	lfs f3, 0(r5)
/* 805BF070  38 83 AB FC */	addi r4, r3, lit_639@l /* 0x8064ABFC@l */
/* 805BF074  FC A7 00 72 */	fmul f5, f7, f1
/* 805BF078  FC 48 00 32 */	fmul f2, f8, f0
/* 805BF07C  C0 06 00 00 */	lfs f0, 0(r6)
/* 805BF080  C0 27 00 00 */	lfs f1, 0(r7)
/* 805BF084  38 7F 02 CC */	addi r3, r31, 0x2cc
/* 805BF088  C0 84 00 00 */	lfs f4, 0(r4)
/* 805BF08C  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF090  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF094  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF098  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF09C  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF0A0  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF0A4  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF0A8  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF0AC  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF0B0  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF0B4  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF0B8  FC 45 00 B2 */	fmul f2, f5, f2
/* 805BF0BC  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF0C0  FC 40 10 18 */	frsp f2, f2
/* 805BF0C4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805BF0C8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 805BF0CC  EC 40 10 28 */	fsubs f2, f0, f2
/* 805BF0D0  4B DF C0 E1 */	bl add_calc
/* 805BF0D4  3C 60 80 65 */	lis r3, lit_640@ha /* 0x8064AC04@ha */
/* 805BF0D8  3C 80 80 65 */	lis r4, lit_635@ha /* 0x8064ABE4@ha */
/* 805BF0DC  38 A3 AC 04 */	addi r5, r3, lit_640@l /* 0x8064AC04@l */
/* 805BF0E0  C8 E4 AB E4 */	lfd f7, lit_635@l(r4)  /* 0x8064ABE4@l */
/* 805BF0E4  C9 05 00 00 */	lfd f8, 0(r5)
/* 805BF0E8  3C 60 80 65 */	lis r3, lit_636@ha /* 0x8064ABEC@ha */
/* 805BF0EC  39 03 AB EC */	addi r8, r3, lit_636@l /* 0x8064ABEC@l */
/* 805BF0F0  3C A0 80 65 */	lis r5, lit_513@ha /* 0x8064ABD4@ha */
/* 805BF0F4  FC 20 40 34 */	frsqrte f1, f8
/* 805BF0F8  3C 60 80 65 */	lis r3, lit_637@ha /* 0x8064ABF4@ha */
/* 805BF0FC  38 C3 AB F4 */	addi r6, r3, lit_637@l /* 0x8064ABF4@l */
/* 805BF100  C8 C8 00 00 */	lfd f6, 0(r8)
/* 805BF104  3C 80 80 65 */	lis r4, lit_638@ha /* 0x8064ABF8@ha */
/* 805BF108  38 E5 AB D4 */	addi r7, r5, lit_513@l /* 0x8064ABD4@l */
/* 805BF10C  FC 01 00 72 */	fmul f0, f1, f1
/* 805BF110  38 A4 AB F8 */	addi r5, r4, lit_638@l /* 0x8064ABF8@l */
/* 805BF114  3C 60 80 65 */	lis r3, lit_639@ha /* 0x8064ABFC@ha */
/* 805BF118  C0 65 00 00 */	lfs f3, 0(r5)
/* 805BF11C  38 83 AB FC */	addi r4, r3, lit_639@l /* 0x8064ABFC@l */
/* 805BF120  FC A7 00 72 */	fmul f5, f7, f1
/* 805BF124  FC 48 00 32 */	fmul f2, f8, f0
/* 805BF128  C0 06 00 00 */	lfs f0, 0(r6)
/* 805BF12C  C0 27 00 00 */	lfs f1, 0(r7)
/* 805BF130  38 7F 02 D0 */	addi r3, r31, 0x2d0
/* 805BF134  C0 84 00 00 */	lfs f4, 0(r4)
/* 805BF138  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF13C  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF140  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF144  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF148  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF14C  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF150  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF154  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF158  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF15C  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF160  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF164  FC 45 00 B2 */	fmul f2, f5, f2
/* 805BF168  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF16C  FC 40 10 18 */	frsp f2, f2
/* 805BF170  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805BF174  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 805BF178  EC 40 10 28 */	fsubs f2, f0, f2
/* 805BF17C  4B DF C0 35 */	bl add_calc
/* 805BF180  48 00 03 08 */	b lbl_805BF488
lbl_805BF184:
/* 805BF184  80 7F 01 E8 */	lwz r3, 0x1e8(r31)
/* 805BF188  34 03 FF CD */	addic. r0, r3, -51
/* 805BF18C  40 80 00 10 */	bge lbl_805BF19C
/* 805BF190  3C 60 80 65 */	lis r3, lit_637@ha /* 0x8064ABF4@ha */
/* 805BF194  C0 63 AB F4 */	lfs f3, lit_637@l(r3)  /* 0x8064ABF4@l */
/* 805BF198  48 00 00 0C */	b lbl_805BF1A4
lbl_805BF19C:
/* 805BF19C  3C 60 80 65 */	lis r3, lit_641@ha /* 0x8064AC0C@ha */
/* 805BF1A0  C0 63 AC 0C */	lfs f3, lit_641@l(r3)  /* 0x8064AC0C@l */
lbl_805BF1A4:
/* 805BF1A4  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 805BF1A8  7C 60 02 78 */	xor r0, r3, r0
/* 805BF1AC  7C 03 00 51 */	subf. r0, r3, r0
/* 805BF1B0  40 82 00 20 */	bne lbl_805BF1D0
/* 805BF1B4  3C 80 80 65 */	lis r4, lit_642@ha /* 0x8064AC10@ha */
/* 805BF1B8  3C 60 80 65 */	lis r3, lit_643@ha /* 0x8064AC14@ha */
/* 805BF1BC  C0 24 AC 10 */	lfs f1, lit_642@l(r4)  /* 0x8064AC10@l */
/* 805BF1C0  C0 03 AC 14 */	lfs f0, lit_643@l(r3)  /* 0x8064AC14@l */
/* 805BF1C4  D0 3F 02 C8 */	stfs f1, 0x2c8(r31)
/* 805BF1C8  D0 1F 02 CC */	stfs f0, 0x2cc(r31)
/* 805BF1CC  48 00 02 10 */	b lbl_805BF3DC
lbl_805BF1D0:
/* 805BF1D0  2C 00 00 28 */	cmpwi r0, 0x28
/* 805BF1D4  41 80 01 60 */	blt lbl_805BF334
/* 805BF1D8  3C 60 80 65 */	lis r3, lit_634@ha /* 0x8064ABDC@ha */
/* 805BF1DC  3C 80 80 65 */	lis r4, lit_635@ha /* 0x8064ABE4@ha */
/* 805BF1E0  38 A3 AB DC */	addi r5, r3, lit_634@l /* 0x8064ABDC@l */
/* 805BF1E4  C8 E4 AB E4 */	lfd f7, lit_635@l(r4)  /* 0x8064ABE4@l */
/* 805BF1E8  C9 05 00 00 */	lfd f8, 0(r5)
/* 805BF1EC  3C 60 80 65 */	lis r3, lit_636@ha /* 0x8064ABEC@ha */
/* 805BF1F0  39 03 AB EC */	addi r8, r3, lit_636@l /* 0x8064ABEC@l */
/* 805BF1F4  3C A0 80 65 */	lis r5, lit_513@ha /* 0x8064ABD4@ha */
/* 805BF1F8  FC 20 40 34 */	frsqrte f1, f8
/* 805BF1FC  3C 60 80 65 */	lis r3, lit_637@ha /* 0x8064ABF4@ha */
/* 805BF200  38 C3 AB F4 */	addi r6, r3, lit_637@l /* 0x8064ABF4@l */
/* 805BF204  C8 C8 00 00 */	lfd f6, 0(r8)
/* 805BF208  3C 80 80 65 */	lis r4, lit_638@ha /* 0x8064ABF8@ha */
/* 805BF20C  38 E5 AB D4 */	addi r7, r5, lit_513@l /* 0x8064ABD4@l */
/* 805BF210  FC 01 00 72 */	fmul f0, f1, f1
/* 805BF214  38 A4 AB F8 */	addi r5, r4, lit_638@l /* 0x8064ABF8@l */
/* 805BF218  3C 60 80 65 */	lis r3, lit_639@ha /* 0x8064ABFC@ha */
/* 805BF21C  C0 65 00 00 */	lfs f3, 0(r5)
/* 805BF220  38 83 AB FC */	addi r4, r3, lit_639@l /* 0x8064ABFC@l */
/* 805BF224  FC A7 00 72 */	fmul f5, f7, f1
/* 805BF228  FC 48 00 32 */	fmul f2, f8, f0
/* 805BF22C  C0 06 00 00 */	lfs f0, 0(r6)
/* 805BF230  C0 27 00 00 */	lfs f1, 0(r7)
/* 805BF234  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805BF238  C0 84 00 00 */	lfs f4, 0(r4)
/* 805BF23C  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF240  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF244  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF248  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF24C  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF250  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF254  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF258  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF25C  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF260  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF264  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF268  FC 45 00 B2 */	fmul f2, f5, f2
/* 805BF26C  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF270  FC 40 10 18 */	frsp f2, f2
/* 805BF274  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805BF278  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805BF27C  EC 40 10 28 */	fsubs f2, f0, f2
/* 805BF280  4B DF BF 31 */	bl add_calc
/* 805BF284  3C 60 80 65 */	lis r3, lit_634@ha /* 0x8064ABDC@ha */
/* 805BF288  3C 80 80 65 */	lis r4, lit_635@ha /* 0x8064ABE4@ha */
/* 805BF28C  38 A3 AB DC */	addi r5, r3, lit_634@l /* 0x8064ABDC@l */
/* 805BF290  C8 E4 AB E4 */	lfd f7, lit_635@l(r4)  /* 0x8064ABE4@l */
/* 805BF294  C9 05 00 00 */	lfd f8, 0(r5)
/* 805BF298  3C 60 80 65 */	lis r3, lit_636@ha /* 0x8064ABEC@ha */
/* 805BF29C  39 03 AB EC */	addi r8, r3, lit_636@l /* 0x8064ABEC@l */
/* 805BF2A0  3C A0 80 65 */	lis r5, lit_513@ha /* 0x8064ABD4@ha */
/* 805BF2A4  FC 20 40 34 */	frsqrte f1, f8
/* 805BF2A8  3C 60 80 65 */	lis r3, lit_637@ha /* 0x8064ABF4@ha */
/* 805BF2AC  38 C3 AB F4 */	addi r6, r3, lit_637@l /* 0x8064ABF4@l */
/* 805BF2B0  C8 C8 00 00 */	lfd f6, 0(r8)
/* 805BF2B4  3C 80 80 65 */	lis r4, lit_638@ha /* 0x8064ABF8@ha */
/* 805BF2B8  38 E5 AB D4 */	addi r7, r5, lit_513@l /* 0x8064ABD4@l */
/* 805BF2BC  FC 01 00 72 */	fmul f0, f1, f1
/* 805BF2C0  38 A4 AB F8 */	addi r5, r4, lit_638@l /* 0x8064ABF8@l */
/* 805BF2C4  3C 60 80 65 */	lis r3, lit_639@ha /* 0x8064ABFC@ha */
/* 805BF2C8  C0 65 00 00 */	lfs f3, 0(r5)
/* 805BF2CC  38 83 AB FC */	addi r4, r3, lit_639@l /* 0x8064ABFC@l */
/* 805BF2D0  FC A7 00 72 */	fmul f5, f7, f1
/* 805BF2D4  FC 48 00 32 */	fmul f2, f8, f0
/* 805BF2D8  C0 06 00 00 */	lfs f0, 0(r6)
/* 805BF2DC  C0 27 00 00 */	lfs f1, 0(r7)
/* 805BF2E0  38 7F 02 CC */	addi r3, r31, 0x2cc
/* 805BF2E4  C0 84 00 00 */	lfs f4, 0(r4)
/* 805BF2E8  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF2EC  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF2F0  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF2F4  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF2F8  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF2FC  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF300  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF304  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF308  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF30C  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF310  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF314  FC 45 00 B2 */	fmul f2, f5, f2
/* 805BF318  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF31C  FC 40 10 18 */	frsp f2, f2
/* 805BF320  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 805BF324  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 805BF328  EC 40 10 28 */	fsubs f2, f0, f2
/* 805BF32C  4B DF BE 85 */	bl add_calc
/* 805BF330  48 00 00 AC */	b lbl_805BF3DC
lbl_805BF334:
/* 805BF334  2C 00 00 0A */	cmpwi r0, 0xa
/* 805BF338  40 80 00 38 */	bge lbl_805BF370
/* 805BF33C  3C 80 80 65 */	lis r4, lit_644@ha /* 0x8064AC18@ha */
/* 805BF340  3C 60 80 65 */	lis r3, lit_645@ha /* 0x8064AC1C@ha */
/* 805BF344  C0 24 AC 18 */	lfs f1, lit_644@l(r4)  /* 0x8064AC18@l */
/* 805BF348  C0 03 AC 1C */	lfs f0, lit_645@l(r3)  /* 0x8064AC1C@l */
/* 805BF34C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 805BF350  C0 5F 02 C8 */	lfs f2, 0x2c8(r31)
/* 805BF354  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805BF358  EC 22 08 2A */	fadds f1, f2, f1
/* 805BF35C  D0 3F 02 C8 */	stfs f1, 0x2c8(r31)
/* 805BF360  C0 3F 02 CC */	lfs f1, 0x2cc(r31)
/* 805BF364  EC 01 00 2A */	fadds f0, f1, f0
/* 805BF368  D0 1F 02 CC */	stfs f0, 0x2cc(r31)
/* 805BF36C  48 00 00 70 */	b lbl_805BF3DC
lbl_805BF370:
/* 805BF370  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805BF374  40 80 00 38 */	bge lbl_805BF3AC
/* 805BF378  3C 80 80 65 */	lis r4, lit_646@ha /* 0x8064AC20@ha */
/* 805BF37C  3C 60 80 65 */	lis r3, lit_647@ha /* 0x8064AC24@ha */
/* 805BF380  C0 24 AC 20 */	lfs f1, lit_646@l(r4)  /* 0x8064AC20@l */
/* 805BF384  C0 03 AC 24 */	lfs f0, lit_647@l(r3)  /* 0x8064AC24@l */
/* 805BF388  EC 21 00 F2 */	fmuls f1, f1, f3
/* 805BF38C  C0 5F 02 C8 */	lfs f2, 0x2c8(r31)
/* 805BF390  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805BF394  EC 22 08 2A */	fadds f1, f2, f1
/* 805BF398  D0 3F 02 C8 */	stfs f1, 0x2c8(r31)
/* 805BF39C  C0 3F 02 CC */	lfs f1, 0x2cc(r31)
/* 805BF3A0  EC 01 00 2A */	fadds f0, f1, f0
/* 805BF3A4  D0 1F 02 CC */	stfs f0, 0x2cc(r31)
/* 805BF3A8  48 00 00 34 */	b lbl_805BF3DC
lbl_805BF3AC:
/* 805BF3AC  3C 80 80 65 */	lis r4, lit_648@ha /* 0x8064AC28@ha */
/* 805BF3B0  3C 60 80 65 */	lis r3, lit_639@ha /* 0x8064ABFC@ha */
/* 805BF3B4  C0 24 AC 28 */	lfs f1, lit_648@l(r4)  /* 0x8064AC28@l */
/* 805BF3B8  C0 03 AB FC */	lfs f0, lit_639@l(r3)  /* 0x8064ABFC@l */
/* 805BF3BC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 805BF3C0  C0 5F 02 C8 */	lfs f2, 0x2c8(r31)
/* 805BF3C4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805BF3C8  EC 22 08 2A */	fadds f1, f2, f1
/* 805BF3CC  D0 3F 02 C8 */	stfs f1, 0x2c8(r31)
/* 805BF3D0  C0 3F 02 CC */	lfs f1, 0x2cc(r31)
/* 805BF3D4  EC 01 00 2A */	fadds f0, f1, f0
/* 805BF3D8  D0 1F 02 CC */	stfs f0, 0x2cc(r31)
lbl_805BF3DC:
/* 805BF3DC  3C 60 80 65 */	lis r3, lit_640@ha /* 0x8064AC04@ha */
/* 805BF3E0  3C 80 80 65 */	lis r4, lit_635@ha /* 0x8064ABE4@ha */
/* 805BF3E4  38 A3 AC 04 */	addi r5, r3, lit_640@l /* 0x8064AC04@l */
/* 805BF3E8  C8 E4 AB E4 */	lfd f7, lit_635@l(r4)  /* 0x8064ABE4@l */
/* 805BF3EC  C9 05 00 00 */	lfd f8, 0(r5)
/* 805BF3F0  3C 60 80 65 */	lis r3, lit_636@ha /* 0x8064ABEC@ha */
/* 805BF3F4  39 03 AB EC */	addi r8, r3, lit_636@l /* 0x8064ABEC@l */
/* 805BF3F8  3C A0 80 65 */	lis r5, lit_649@ha /* 0x8064AC2C@ha */
/* 805BF3FC  FC 20 40 34 */	frsqrte f1, f8
/* 805BF400  3C 60 80 65 */	lis r3, lit_637@ha /* 0x8064ABF4@ha */
/* 805BF404  38 C3 AB F4 */	addi r6, r3, lit_637@l /* 0x8064ABF4@l */
/* 805BF408  C8 C8 00 00 */	lfd f6, 0(r8)
/* 805BF40C  3C 80 80 65 */	lis r4, lit_638@ha /* 0x8064ABF8@ha */
/* 805BF410  38 E5 AC 2C */	addi r7, r5, lit_649@l /* 0x8064AC2C@l */
/* 805BF414  FC 01 00 72 */	fmul f0, f1, f1
/* 805BF418  38 A4 AB F8 */	addi r5, r4, lit_638@l /* 0x8064ABF8@l */
/* 805BF41C  3C 60 80 65 */	lis r3, lit_639@ha /* 0x8064ABFC@ha */
/* 805BF420  C0 65 00 00 */	lfs f3, 0(r5)
/* 805BF424  38 83 AB FC */	addi r4, r3, lit_639@l /* 0x8064ABFC@l */
/* 805BF428  FC A7 00 72 */	fmul f5, f7, f1
/* 805BF42C  FC 48 00 32 */	fmul f2, f8, f0
/* 805BF430  C0 06 00 00 */	lfs f0, 0(r6)
/* 805BF434  C0 27 00 00 */	lfs f1, 0(r7)
/* 805BF438  38 7F 02 D0 */	addi r3, r31, 0x2d0
/* 805BF43C  C0 84 00 00 */	lfs f4, 0(r4)
/* 805BF440  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF444  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF448  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF44C  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF450  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF454  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF458  FC A5 00 B2 */	fmul f5, f5, f2
/* 805BF45C  FC 45 01 72 */	fmul f2, f5, f5
/* 805BF460  FC A7 01 72 */	fmul f5, f7, f5
/* 805BF464  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF468  FC 46 10 28 */	fsub f2, f6, f2
/* 805BF46C  FC 45 00 B2 */	fmul f2, f5, f2
/* 805BF470  FC 48 00 B2 */	fmul f2, f8, f2
/* 805BF474  FC 40 10 18 */	frsp f2, f2
/* 805BF478  D0 41 00 08 */	stfs f2, 8(r1)
/* 805BF47C  C0 41 00 08 */	lfs f2, 8(r1)
/* 805BF480  EC 40 10 28 */	fsubs f2, f0, f2
/* 805BF484  4B DF BD 2D */	bl add_calc
lbl_805BF488:
/* 805BF488  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BF48C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805BF490  7C 08 03 A6 */	mtlr r0
/* 805BF494  38 21 00 30 */	addi r1, r1, 0x30
/* 805BF498  4E 80 00 20 */	blr 
