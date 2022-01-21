.include "macros.inc"

.section .text

.org 0x800320C0

.global sqrtf2__Ff
sqrtf2__Ff:
/* 800320C0 0002F020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800320C4 0002F024  7C 08 02 A6 */	mflr r0
/* 800320C8 0002F028  90 01 00 14 */	stw r0, 0x14(r1)
/* 800320CC 0002F02C  48 00 00 15 */	bl sqrtf__3stdFf
/* 800320D0 0002F030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800320D4 0002F034  7C 08 03 A6 */	mtlr r0
/* 800320D8 0002F038  38 21 00 10 */	addi r1, r1, 0x10
/* 800320DC 0002F03C  4E 80 00 20 */	blr 

.global sqrtf__3stdFf
sqrtf__3stdFf:
/* 800320E0 0002F040  C0 02 83 90 */	lfs f0, @135-_SDA2_BASE_(r2)
/* 800320E4 0002F044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800320E8 0002F048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800320EC 0002F04C  40 81 00 50 */	ble lbl_8003213C
/* 800320F0 0002F050  FC 40 08 34 */	frsqrte f2, f1
/* 800320F4 0002F054  C8 82 83 98 */	lfd f4, @136-_SDA2_BASE_(r2)
/* 800320F8 0002F058  C8 62 83 A0 */	lfd f3, @137-_SDA2_BASE_(r2)
/* 800320FC 0002F05C  FC 02 00 B2 */	fmul f0, f2, f2
/* 80032100 0002F060  FC 44 00 B2 */	fmul f2, f4, f2
/* 80032104 0002F064  FC 01 18 3C */	fnmsub f0, f1, f0, f3
/* 80032108 0002F068  FC 42 00 32 */	fmul f2, f2, f0
/* 8003210C 0002F06C  FC 02 00 B2 */	fmul f0, f2, f2
/* 80032110 0002F070  FC 44 00 B2 */	fmul f2, f4, f2
/* 80032114 0002F074  FC 01 18 3C */	fnmsub f0, f1, f0, f3
/* 80032118 0002F078  FC 42 00 32 */	fmul f2, f2, f0
/* 8003211C 0002F07C  FC 02 00 B2 */	fmul f0, f2, f2
/* 80032120 0002F080  FC 44 00 B2 */	fmul f2, f4, f2
/* 80032124 0002F084  FC 01 18 3C */	fnmsub f0, f1, f0, f3
/* 80032128 0002F088  FC 02 00 32 */	fmul f0, f2, f0
/* 8003212C 0002F08C  FC 01 00 32 */	fmul f0, f1, f0
/* 80032130 0002F090  FC 00 00 18 */	frsp f0, f0
/* 80032134 0002F094  D0 01 00 08 */	stfs f0, 8(r1)
/* 80032138 0002F098  C0 21 00 08 */	lfs f1, 8(r1)
lbl_8003213C:
/* 8003213C 0002F09C  38 21 00 10 */	addi r1, r1, 0x10
/* 80032140 0002F0A0  4E 80 00 20 */	blr 
/* 80032144 0002F0A4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032148 0002F0A8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003214C 0002F0AC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032150 0002F0B0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032154 0002F0B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032158 0002F0B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003215C 0002F0BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global sinf__3stdFf
sinf__3stdFf:
/* 80032160 0002F0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032164 0002F0C4  7C 08 02 A6 */	mflr r0
/* 80032168 0002F0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003216C 0002F0CC  48 06 FD 71 */	bl sin
/* 80032170 0002F0D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032174 0002F0D4  FC 20 08 18 */	frsp f1, f1
/* 80032178 0002F0D8  7C 08 03 A6 */	mtlr r0
/* 8003217C 0002F0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80032180 0002F0E0  4E 80 00 20 */	blr 
/* 80032184 0002F0E4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032188 0002F0E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003218C 0002F0EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032190 0002F0F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032194 0002F0F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032198 0002F0F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003219C 0002F0FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_InitSinTable__Fv
Jac_InitSinTable__Fv:
/* 800321A0 0002F100  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800321A4 0002F104  7C 08 02 A6 */	mflr r0
/* 800321A8 0002F108  90 01 00 54 */	stw r0, 0x54(r1)
/* 800321AC 0002F10C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800321B0 0002F110  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 800321B4 0002F114  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800321B8 0002F118  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 800321BC 0002F11C  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 800321C0 0002F120  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 800321C4 0002F124  39 61 00 20 */	addi r11, r1, 0x20
/* 800321C8 0002F128  48 06 8D 09 */	bl func_8009AED0
/* 800321CC 0002F12C  3C 60 80 1B */	lis r3, SINTABLE@ha
/* 800321D0 0002F130  C3 A2 83 A8 */	lfs f29, @161-_SDA2_BASE_(r2)
/* 800321D4 0002F134  CB C2 83 B0 */	lfd f30, @164-_SDA2_BASE_(r2)
/* 800321D8 0002F138  3B C3 A7 C0 */	addi r30, r3, SINTABLE@l
/* 800321DC 0002F13C  C3 E2 83 AC */	lfs f31, @162-_SDA2_BASE_(r2)
/* 800321E0 0002F140  3B 80 00 00 */	li r28, 0
/* 800321E4 0002F144  3B E0 00 00 */	li r31, 0
/* 800321E8 0002F148  3F A0 43 30 */	lis r29, 0x4330
/* 800321EC 0002F14C  60 00 00 00 */	nop 
lbl_800321F0:
/* 800321F0 0002F150  93 81 00 0C */	stw r28, 0xc(r1)
/* 800321F4 0002F154  93 A1 00 08 */	stw r29, 8(r1)
/* 800321F8 0002F158  C8 01 00 08 */	lfd f0, 8(r1)
/* 800321FC 0002F15C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80032200 0002F160  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80032204 0002F164  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80032208 0002F168  4B FF FF 59 */	bl sinf__3stdFf
/* 8003220C 0002F16C  3B 9C 00 01 */	addi r28, r28, 1
/* 80032210 0002F170  7C 3E FD 2E */	stfsx f1, r30, r31
/* 80032214 0002F174  28 1C 01 01 */	cmplwi r28, 0x101
/* 80032218 0002F178  3B FF 00 04 */	addi r31, r31, 4
/* 8003221C 0002F17C  41 80 FF D4 */	blt lbl_800321F0
/* 80032220 0002F180  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80032224 0002F184  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80032228 0002F188  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8003222C 0002F18C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80032230 0002F190  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 80032234 0002F194  39 61 00 20 */	addi r11, r1, 0x20
/* 80032238 0002F198  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8003223C 0002F19C  48 06 8C E1 */	bl func_8009AF1C
/* 80032240 0002F1A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80032244 0002F1A4  7C 08 03 A6 */	mtlr r0
/* 80032248 0002F1A8  38 21 00 50 */	addi r1, r1, 0x50
/* 8003224C 0002F1AC  4E 80 00 20 */	blr 
/* 80032250 0002F1B0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032254 0002F1B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032258 0002F1B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003225C 0002F1BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global sinf3__Ff
sinf3__Ff:
/* 80032260 0002F1C0  C0 02 83 B8 */	lfs f0, @169-_SDA2_BASE_(r2)
/* 80032264 0002F1C4  3C 60 80 1B */	lis r3, SINTABLE@ha
/* 80032268 0002F1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003226C 0002F1CC  38 63 A7 C0 */	addi r3, r3, SINTABLE@l
/* 80032270 0002F1D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80032274 0002F1D4  FC 00 00 1E */	fctiwz f0, f0
/* 80032278 0002F1D8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8003227C 0002F1DC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80032280 0002F1E0  54 00 10 3A */	slwi r0, r0, 2
/* 80032284 0002F1E4  7C 23 04 2E */	lfsx f1, r3, r0
/* 80032288 0002F1E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003228C 0002F1EC  4E 80 00 20 */	blr 
/* 80032290 0002F1F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032294 0002F1F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032298 0002F1F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003229C 0002F1FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
