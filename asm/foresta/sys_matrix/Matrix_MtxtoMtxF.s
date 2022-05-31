lbl_8040D600:
/* 8040D600  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8040D604  3C 00 43 30 */	lis r0, 0x4330
/* 8040D608  3C A0 80 64 */	lis r5, lit_551@ha /* 0x80643754@ha */
/* 8040D60C  A1 03 00 00 */	lhz r8, 0(r3)
/* 8040D610  38 C5 37 54 */	addi r6, r5, lit_551@l /* 0x80643754@l */
/* 8040D614  A0 E3 00 20 */	lhz r7, 0x20(r3)
/* 8040D618  3C A0 80 64 */	lis r5, lit_549@ha /* 0x8064374C@ha */
/* 8040D61C  51 07 80 1E */	rlwimi r7, r8, 0x10, 0, 0xf
/* 8040D620  90 01 00 08 */	stw r0, 8(r1)
/* 8040D624  39 05 37 4C */	addi r8, r5, lit_549@l /* 0x8064374C@l */
/* 8040D628  C8 06 00 00 */	lfd f0, 0(r6)
/* 8040D62C  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8040D630  C8 28 00 00 */	lfd f1, 0(r8)
/* 8040D634  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8040D638  C8 41 00 08 */	lfd f2, 8(r1)
/* 8040D63C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040D640  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D644  90 01 00 18 */	stw r0, 0x18(r1)
/* 8040D648  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D64C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8040D650  90 01 00 28 */	stw r0, 0x28(r1)
/* 8040D654  FC 40 10 18 */	frsp f2, f2
/* 8040D658  90 01 00 30 */	stw r0, 0x30(r1)
/* 8040D65C  D0 44 00 00 */	stfs f2, 0(r4)
/* 8040D660  A0 C3 00 02 */	lhz r6, 2(r3)
/* 8040D664  A0 A3 00 22 */	lhz r5, 0x22(r3)
/* 8040D668  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D66C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D670  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8040D674  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8040D678  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D67C  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D680  FC 40 10 18 */	frsp f2, f2
/* 8040D684  D0 44 00 04 */	stfs f2, 4(r4)
/* 8040D688  A0 C3 00 04 */	lhz r6, 4(r3)
/* 8040D68C  A0 A3 00 24 */	lhz r5, 0x24(r3)
/* 8040D690  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D694  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D698  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8040D69C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8040D6A0  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D6A4  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D6A8  FC 40 10 18 */	frsp f2, f2
/* 8040D6AC  D0 44 00 08 */	stfs f2, 8(r4)
/* 8040D6B0  A0 C3 00 06 */	lhz r6, 6(r3)
/* 8040D6B4  A0 A3 00 26 */	lhz r5, 0x26(r3)
/* 8040D6B8  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D6BC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D6C0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8040D6C4  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 8040D6C8  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D6CC  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D6D0  FC 40 10 18 */	frsp f2, f2
/* 8040D6D4  D0 44 00 0C */	stfs f2, 0xc(r4)
/* 8040D6D8  A0 C3 00 08 */	lhz r6, 8(r3)
/* 8040D6DC  A0 A3 00 28 */	lhz r5, 0x28(r3)
/* 8040D6E0  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D6E4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D6E8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8040D6EC  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 8040D6F0  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D6F4  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D6F8  FC 40 10 18 */	frsp f2, f2
/* 8040D6FC  D0 44 00 10 */	stfs f2, 0x10(r4)
/* 8040D700  A0 C3 00 0A */	lhz r6, 0xa(r3)
/* 8040D704  A0 A3 00 2A */	lhz r5, 0x2a(r3)
/* 8040D708  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D70C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D710  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8040D714  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 8040D718  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D71C  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D720  FC 40 10 18 */	frsp f2, f2
/* 8040D724  D0 44 00 14 */	stfs f2, 0x14(r4)
/* 8040D728  A0 C3 00 0C */	lhz r6, 0xc(r3)
/* 8040D72C  A0 A3 00 2C */	lhz r5, 0x2c(r3)
/* 8040D730  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D734  90 01 00 38 */	stw r0, 0x38(r1)
/* 8040D738  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D73C  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 8040D740  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 8040D744  90 01 00 40 */	stw r0, 0x40(r1)
/* 8040D748  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D74C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8040D750  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D754  90 01 00 50 */	stw r0, 0x50(r1)
/* 8040D758  90 01 00 58 */	stw r0, 0x58(r1)
/* 8040D75C  FC 40 10 18 */	frsp f2, f2
/* 8040D760  90 01 00 60 */	stw r0, 0x60(r1)
/* 8040D764  D0 44 00 18 */	stfs f2, 0x18(r4)
/* 8040D768  A0 C3 00 0E */	lhz r6, 0xe(r3)
/* 8040D76C  A0 A3 00 2E */	lhz r5, 0x2e(r3)
/* 8040D770  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D774  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D778  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8040D77C  C8 41 00 40 */	lfd f2, 0x40(r1)
/* 8040D780  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D784  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D788  FC 40 10 18 */	frsp f2, f2
/* 8040D78C  D0 44 00 1C */	stfs f2, 0x1c(r4)
/* 8040D790  A0 C3 00 10 */	lhz r6, 0x10(r3)
/* 8040D794  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 8040D798  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D79C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D7A0  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 8040D7A4  C8 41 00 48 */	lfd f2, 0x48(r1)
/* 8040D7A8  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D7AC  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D7B0  FC 40 10 18 */	frsp f2, f2
/* 8040D7B4  D0 44 00 20 */	stfs f2, 0x20(r4)
/* 8040D7B8  A0 C3 00 12 */	lhz r6, 0x12(r3)
/* 8040D7BC  A0 A3 00 32 */	lhz r5, 0x32(r3)
/* 8040D7C0  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D7C4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D7C8  90 A1 00 54 */	stw r5, 0x54(r1)
/* 8040D7CC  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 8040D7D0  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D7D4  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D7D8  FC 40 10 18 */	frsp f2, f2
/* 8040D7DC  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 8040D7E0  A0 C3 00 14 */	lhz r6, 0x14(r3)
/* 8040D7E4  A0 A3 00 34 */	lhz r5, 0x34(r3)
/* 8040D7E8  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D7EC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D7F0  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8040D7F4  C8 41 00 58 */	lfd f2, 0x58(r1)
/* 8040D7F8  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D7FC  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D800  FC 40 10 18 */	frsp f2, f2
/* 8040D804  D0 44 00 28 */	stfs f2, 0x28(r4)
/* 8040D808  A0 C3 00 16 */	lhz r6, 0x16(r3)
/* 8040D80C  A0 A3 00 36 */	lhz r5, 0x36(r3)
/* 8040D810  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D814  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D818  90 A1 00 64 */	stw r5, 0x64(r1)
/* 8040D81C  C8 41 00 60 */	lfd f2, 0x60(r1)
/* 8040D820  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D824  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D828  FC 40 10 18 */	frsp f2, f2
/* 8040D82C  D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 8040D830  A0 C3 00 18 */	lhz r6, 0x18(r3)
/* 8040D834  A0 A3 00 38 */	lhz r5, 0x38(r3)
/* 8040D838  50 C5 80 1E */	rlwimi r5, r6, 0x10, 0, 0xf
/* 8040D83C  90 01 00 68 */	stw r0, 0x68(r1)
/* 8040D840  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8040D844  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 8040D848  C8 41 00 68 */	lfd f2, 0x68(r1)
/* 8040D84C  90 01 00 70 */	stw r0, 0x70(r1)
/* 8040D850  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D854  90 01 00 78 */	stw r0, 0x78(r1)
/* 8040D858  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D85C  90 01 00 80 */	stw r0, 0x80(r1)
/* 8040D860  FC 40 10 18 */	frsp f2, f2
/* 8040D864  D0 44 00 30 */	stfs f2, 0x30(r4)
/* 8040D868  A0 A3 00 1A */	lhz r5, 0x1a(r3)
/* 8040D86C  A0 03 00 3A */	lhz r0, 0x3a(r3)
/* 8040D870  50 A0 80 1E */	rlwimi r0, r5, 0x10, 0, 0xf
/* 8040D874  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040D878  90 01 00 74 */	stw r0, 0x74(r1)
/* 8040D87C  C8 41 00 70 */	lfd f2, 0x70(r1)
/* 8040D880  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D884  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D888  FC 40 10 18 */	frsp f2, f2
/* 8040D88C  D0 44 00 34 */	stfs f2, 0x34(r4)
/* 8040D890  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 8040D894  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8040D898  50 A0 80 1E */	rlwimi r0, r5, 0x10, 0, 0xf
/* 8040D89C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040D8A0  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8040D8A4  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 8040D8A8  FC 42 00 28 */	fsub f2, f2, f0
/* 8040D8AC  FC 41 00 B2 */	fmul f2, f1, f2
/* 8040D8B0  FC 40 10 18 */	frsp f2, f2
/* 8040D8B4  D0 44 00 38 */	stfs f2, 0x38(r4)
/* 8040D8B8  A0 A3 00 1E */	lhz r5, 0x1e(r3)
/* 8040D8BC  A0 03 00 3E */	lhz r0, 0x3e(r3)
/* 8040D8C0  50 A0 80 1E */	rlwimi r0, r5, 0x10, 0, 0xf
/* 8040D8C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040D8C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8040D8CC  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 8040D8D0  FC 02 00 28 */	fsub f0, f2, f0
/* 8040D8D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8040D8D8  FC 00 00 18 */	frsp f0, f0
/* 8040D8DC  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 8040D8E0  38 21 00 90 */	addi r1, r1, 0x90
/* 8040D8E4  4E 80 00 20 */	blr 
