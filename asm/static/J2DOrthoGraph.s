.include "macros.inc"

.section .text

.org 0x80078178

.global __ct__13J2DOrthoGraphFv
__ct__13J2DOrthoGraphFv:
/* 80078178 000750D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007817C 000750DC  7C 08 02 A6 */	mflr r0
/* 80078180 000750E0  C0 22 87 D8 */	lfs f1, @427-_SDA2_BASE_(r2)
/* 80078184 000750E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078188 000750E8  FC 40 08 90 */	fmr f2, f1
/* 8007818C 000750EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078190 000750F0  FC 60 08 90 */	fmr f3, f1
/* 80078194 000750F4  FC 80 08 90 */	fmr f4, f1
/* 80078198 000750F8  7C 7F 1B 78 */	mr r31, r3
/* 8007819C 000750FC  4B FF F4 D9 */	bl __ct__14J2DGrafContextFffff
/* 800781A0 00075100  3C 80 80 0E */	lis r4, __vt__13J2DOrthoGraph@ha
/* 800781A4 00075104  7F E3 FB 78 */	mr r3, r31
/* 800781A8 00075108  38 04 F7 94 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 800781AC 0007510C  90 1F 00 00 */	stw r0, 0(r31)
/* 800781B0 00075110  81 9F 00 00 */	lwz r12, 0(r31)
/* 800781B4 00075114  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800781B8 00075118  7D 89 03 A6 */	mtctr r12
/* 800781BC 0007511C  4E 80 04 21 */	bctrl 
/* 800781C0 00075120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800781C4 00075124  7F E3 FB 78 */	mr r3, r31
/* 800781C8 00075128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800781CC 0007512C  7C 08 03 A6 */	mtlr r0
/* 800781D0 00075130  38 21 00 10 */	addi r1, r1, 0x10
/* 800781D4 00075134  4E 80 00 20 */	blr 

.global __ct__13J2DOrthoGraphFffffff
__ct__13J2DOrthoGraphFffffff:
/* 800781D8 00075138  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800781DC 0007513C  7C 08 02 A6 */	mflr r0
/* 800781E0 00075140  90 01 00 64 */	stw r0, 0x64(r1)
/* 800781E4 00075144  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800781E8 00075148  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 800781EC 0007514C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 800781F0 00075150  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 800781F4 00075154  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 800781F8 00075158  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 800781FC 0007515C  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 80078200 00075160  F3 81 00 28 */	psq_st f28, 40(r1), 0, qr0
/* 80078204 00075164  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80078208 00075168  FF 80 18 90 */	fmr f28, f3
/* 8007820C 0007516C  7C 7F 1B 78 */	mr r31, r3
/* 80078210 00075170  FF A0 20 90 */	fmr f29, f4
/* 80078214 00075174  FF C0 28 90 */	fmr f30, f5
/* 80078218 00075178  FF E0 30 90 */	fmr f31, f6
/* 8007821C 0007517C  4B FF F4 59 */	bl __ct__14J2DGrafContextFffff
/* 80078220 00075180  C0 02 87 D8 */	lfs f0, @427-_SDA2_BASE_(r2)
/* 80078224 00075184  3C 60 80 0E */	lis r3, __vt__13J2DOrthoGraph@ha
/* 80078228 00075188  38 03 F7 94 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 8007822C 0007518C  D3 81 00 10 */	stfs f28, 0x10(r1)
/* 80078230 00075190  7F E3 FB 78 */	mr r3, r31
/* 80078234 00075194  D0 01 00 08 */	stfs f0, 8(r1)
/* 80078238 00075198  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8007823C 0007519C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80078240 000751A0  80 A1 00 08 */	lwz r5, 8(r1)
/* 80078244 000751A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80078248 000751A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007824C 000751AC  90 BF 00 BC */	stw r5, 0xbc(r31)
/* 80078250 000751B0  D3 A1 00 14 */	stfs f29, 0x14(r1)
/* 80078254 000751B4  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 80078258 000751B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007825C 000751BC  90 9F 00 C4 */	stw r4, 0xc4(r31)
/* 80078260 000751C0  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80078264 000751C4  D3 DF 00 CC */	stfs f30, 0xcc(r31)
/* 80078268 000751C8  D3 FF 00 D0 */	stfs f31, 0xd0(r31)
/* 8007826C 000751CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80078270 000751D0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80078274 000751D4  7D 89 03 A6 */	mtctr r12
/* 80078278 000751D8  4E 80 04 21 */	bctrl 
/* 8007827C 000751DC  7F E3 FB 78 */	mr r3, r31
/* 80078280 000751E0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80078284 000751E4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80078288 000751E8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8007828C 000751EC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80078290 000751F0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 80078294 000751F4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80078298 000751F8  E3 81 00 28 */	psq_l f28, 40(r1), 0, qr0
/* 8007829C 000751FC  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 800782A0 00075200  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800782A4 00075204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800782A8 00075208  7C 08 03 A6 */	mtlr r0
/* 800782AC 0007520C  38 21 00 60 */	addi r1, r1, 0x60
/* 800782B0 00075210  4E 80 00 20 */	blr 

.global setPort__13J2DOrthoGraphFv
setPort__13J2DOrthoGraphFv:
/* 800782B4 00075214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800782B8 00075218  7C 08 02 A6 */	mflr r0
/* 800782BC 0007521C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800782C0 00075220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800782C4 00075224  7C 7F 1B 78 */	mr r31, r3
/* 800782C8 00075228  4B FF F4 59 */	bl setPort__14J2DGrafContextFv
/* 800782CC 0007522C  C0 42 87 DC */	lfs f2, @477-_SDA2_BASE_(r2)
/* 800782D0 00075230  38 7F 00 40 */	addi r3, r31, 0x40
/* 800782D4 00075234  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 800782D8 00075238  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 800782DC 0007523C  EC 42 00 2A */	fadds f2, f2, f0
/* 800782E0 00075240  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 800782E4 00075244  C0 9F 00 C4 */	lfs f4, 0xc4(r31)
/* 800782E8 00075248  C0 BF 00 CC */	lfs f5, 0xcc(r31)
/* 800782EC 0007524C  C0 DF 00 D0 */	lfs f6, 0xd0(r31)
/* 800782F0 00075250  48 00 B4 A1 */	bl C_MTXOrtho
/* 800782F4 00075254  38 7F 00 40 */	addi r3, r31, 0x40
/* 800782F8 00075258  38 80 00 01 */	li r4, 1
/* 800782FC 0007525C  48 02 17 E9 */	bl GXSetProjection
/* 80078300 00075260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078304 00075264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078308 00075268  7C 08 03 A6 */	mtlr r0
/* 8007830C 0007526C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078310 00075270  4E 80 00 20 */	blr 

.global setOrtho__13J2DOrthoGraphFRCQ29JGeometry8TBox2<f>ff
setOrtho__13J2DOrthoGraphFRCQ29JGeometry8TBox2<f>ff:
/* 80078314 00075274  80 A4 00 00 */	lwz r5, 0(r4)
/* 80078318 00075278  FC 40 10 50 */	fneg f2, f2
/* 8007831C 0007527C  80 04 00 04 */	lwz r0, 4(r4)
/* 80078320 00075280  FC 00 08 50 */	fneg f0, f1
/* 80078324 00075284  90 A3 00 BC */	stw r5, 0xbc(r3)
/* 80078328 00075288  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8007832C 0007528C  80 A4 00 08 */	lwz r5, 8(r4)
/* 80078330 00075290  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80078334 00075294  90 A3 00 C4 */	stw r5, 0xc4(r3)
/* 80078338 00075298  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 8007833C 0007529C  D0 43 00 CC */	stfs f2, 0xcc(r3)
/* 80078340 000752A0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80078344 000752A4  4E 80 00 20 */	blr 

.global setLookat__13J2DOrthoGraphFv
setLookat__13J2DOrthoGraphFv:
/* 80078348 000752A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007834C 000752AC  7C 08 02 A6 */	mflr r0
/* 80078350 000752B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078354 000752B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078358 000752B8  7C 7F 1B 78 */	mr r31, r3
/* 8007835C 000752BC  38 7F 00 80 */	addi r3, r31, 0x80
/* 80078360 000752C0  48 00 AF 49 */	bl PSMTXIdentity
/* 80078364 000752C4  38 7F 00 80 */	addi r3, r31, 0x80
/* 80078368 000752C8  38 80 00 00 */	li r4, 0
/* 8007836C 000752CC  48 02 18 D9 */	bl GXLoadPosMtxImm
/* 80078370 000752D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078374 000752D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078378 000752D8  7C 08 03 A6 */	mtlr r0
/* 8007837C 000752DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80078380 000752E0  4E 80 00 20 */	blr 

.global J2DDrawLine__FffffQ28JUtility6TColori
J2DDrawLine__FffffQ28JUtility6TColori:
/* 80078384 000752E4  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80078388 000752E8  7C 08 02 A6 */	mflr r0
/* 8007838C 000752EC  90 01 01 64 */	stw r0, 0x164(r1)
/* 80078390 000752F0  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80078394 000752F4  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 80078398 000752F8  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 8007839C 000752FC  F3 C1 01 48 */	xsmaddmdp f30, f1, f0
/* 800783A0 00075300  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 800783A4 00075304  F3 A1 01 38 */	psq_st f29, 312(r1), 0, qr0
/* 800783A8 00075308  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 800783AC 0007530C  F3 81 01 28 */	psq_st f28, 296(r1), 0, qr0
/* 800783B0 00075310  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 800783B4 00075314  93 C1 01 18 */	stw r30, 0x118(r1)
/* 800783B8 00075318  FF 80 08 90 */	fmr f28, f1
/* 800783BC 0007531C  7C 7E 1B 78 */	mr r30, r3
/* 800783C0 00075320  FF A0 10 90 */	fmr f29, f2
/* 800783C4 00075324  7C 9F 23 78 */	mr r31, r4
/* 800783C8 00075328  FF C0 18 90 */	fmr f30, f3
/* 800783CC 0007532C  38 61 00 3C */	addi r3, r1, 0x3c
/* 800783D0 00075330  FF E0 20 90 */	fmr f31, f4
/* 800783D4 00075334  4B FF FD A5 */	bl __ct__13J2DOrthoGraphFv
/* 800783D8 00075338  38 61 00 3C */	addi r3, r1, 0x3c
/* 800783DC 0007533C  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 800783E0 00075340  4B FF F9 35 */	bl setLineWidth__14J2DGrafContextFUc
/* 800783E4 00075344  80 1E 00 00 */	lwz r0, 0(r30)
/* 800783E8 00075348  38 61 00 3C */	addi r3, r1, 0x3c
/* 800783EC 0007534C  38 81 00 08 */	addi r4, r1, 8
/* 800783F0 00075350  38 A1 00 0C */	addi r5, r1, 0xc
/* 800783F4 00075354  90 01 00 18 */	stw r0, 0x18(r1)
/* 800783F8 00075358  38 C1 00 10 */	addi r6, r1, 0x10
/* 800783FC 0007535C  38 E1 00 14 */	addi r7, r1, 0x14
/* 80078400 00075360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078404 00075364  90 01 00 10 */	stw r0, 0x10(r1)
/* 80078408 00075368  90 01 00 0C */	stw r0, 0xc(r1)
/* 8007840C 0007536C  90 01 00 08 */	stw r0, 8(r1)
/* 80078410 00075370  4B FF F7 E9 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80078414 00075374  D3 81 00 34 */	stfs f28, 0x34(r1)
/* 80078418 00075378  38 61 00 3C */	addi r3, r1, 0x3c
/* 8007841C 0007537C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80078420 00075380  D3 A1 00 38 */	stfs f29, 0x38(r1)
/* 80078424 00075384  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80078428 00075388  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8007842C 0007538C  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80078430 00075390  90 01 00 30 */	stw r0, 0x30(r1)
/* 80078434 00075394  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80078438 00075398  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 8007843C 0007539C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80078440 000753A0  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80078444 000753A4  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 80078448 000753A8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8007844C 000753AC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80078450 000753B0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80078454 000753B4  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80078458 000753B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8007845C 000753BC  4B FF FC 11 */	bl lineTo__14J2DGrafContextFQ29JGeometry8TVec2<f>
/* 80078460 000753C0  3C 80 80 0E */	lis r4, __vt__13J2DOrthoGraph@ha
/* 80078464 000753C4  3C 60 80 0E */	lis r3, __vt__14J2DGrafContext@ha
/* 80078468 000753C8  38 04 F7 94 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 8007846C 000753CC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80078470 000753D0  38 03 F7 40 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 80078474 000753D4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80078478 000753D8  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 8007847C 000753DC  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80078480 000753E0  E3 C1 01 48 */	psq_l f30, 328(r1), 0, qr0
/* 80078484 000753E4  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 80078488 000753E8  E3 A1 01 38 */	psq_l f29, 312(r1), 0, qr0
/* 8007848C 000753EC  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 80078490 000753F0  E3 81 01 28 */	psq_l f28, 296(r1), 0, qr0
/* 80078494 000753F4  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 80078498 000753F8  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8007849C 000753FC  80 01 01 64 */	lwz r0, 0x164(r1)
/* 800784A0 00075400  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 800784A4 00075404  7C 08 03 A6 */	mtlr r0
/* 800784A8 00075408  38 21 01 60 */	addi r1, r1, 0x160
/* 800784AC 0007540C  4E 80 00 20 */	blr 

.global J2DFillBox__FffffQ28JUtility6TColor
J2DFillBox__FffffQ28JUtility6TColor:
/* 800784B0 00075410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800784B4 00075414  7C 08 02 A6 */	mflr r0
/* 800784B8 00075418  EC 61 18 2A */	fadds f3, f1, f3
/* 800784BC 0007541C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800784C0 00075420  EC 02 20 2A */	fadds f0, f2, f4
/* 800784C4 00075424  38 81 00 08 */	addi r4, r1, 8
/* 800784C8 00075428  80 03 00 00 */	lwz r0, 0(r3)
/* 800784CC 0007542C  38 61 00 0C */	addi r3, r1, 0xc
/* 800784D0 00075430  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800784D4 00075434  90 01 00 08 */	stw r0, 8(r1)
/* 800784D8 00075438  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800784DC 0007543C  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 800784E0 00075440  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800784E4 00075444  48 00 00 15 */	bl J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColor
/* 800784E8 00075448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800784EC 0007544C  7C 08 03 A6 */	mtlr r0
/* 800784F0 00075450  38 21 00 20 */	addi r1, r1, 0x20
/* 800784F4 00075454  4E 80 00 20 */	blr 

.global J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColor
J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColor:
/* 800784F8 00075458  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800784FC 0007545C  7C 08 02 A6 */	mflr r0
/* 80078500 00075460  90 01 01 04 */	stw r0, 0x104(r1)
/* 80078504 00075464  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80078508 00075468  7C 9F 23 78 */	mr r31, r4
/* 8007850C 0007546C  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 80078510 00075470  7C 7E 1B 78 */	mr r30, r3
/* 80078514 00075474  38 61 00 1C */	addi r3, r1, 0x1c
/* 80078518 00075478  4B FF FC 61 */	bl __ct__13J2DOrthoGraphFv
/* 8007851C 0007547C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80078520 00075480  38 61 00 1C */	addi r3, r1, 0x1c
/* 80078524 00075484  38 81 00 08 */	addi r4, r1, 8
/* 80078528 00075488  38 A1 00 0C */	addi r5, r1, 0xc
/* 8007852C 0007548C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80078530 00075490  38 C1 00 10 */	addi r6, r1, 0x10
/* 80078534 00075494  38 E1 00 14 */	addi r7, r1, 0x14
/* 80078538 00075498  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007853C 0007549C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80078540 000754A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80078544 000754A4  90 01 00 08 */	stw r0, 8(r1)
/* 80078548 000754A8  4B FF F6 B1 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 8007854C 000754AC  7F C4 F3 78 */	mr r4, r30
/* 80078550 000754B0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80078554 000754B4  4B FF F7 ED */	bl fillBox__14J2DGrafContextFRCQ29JGeometry8TBox2<f>
/* 80078558 000754B8  3C 80 80 0E */	lis r4, __vt__13J2DOrthoGraph@ha
/* 8007855C 000754BC  3C 60 80 0E */	lis r3, __vt__14J2DGrafContext@ha
/* 80078560 000754C0  38 04 F7 94 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80078564 000754C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80078568 000754C8  38 03 F7 40 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 8007856C 000754CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80078570 000754D0  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 80078574 000754D4  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 80078578 000754D8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8007857C 000754DC  7C 08 03 A6 */	mtlr r0
/* 80078580 000754E0  38 21 01 00 */	addi r1, r1, 0x100
/* 80078584 000754E4  4E 80 00 20 */	blr 

.global J2DDrawFrame__FffffQ28JUtility6TColorUc
J2DDrawFrame__FffffQ28JUtility6TColorUc:
/* 80078588 000754E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007858C 000754EC  7C 08 02 A6 */	mflr r0
/* 80078590 000754F0  7C 85 23 78 */	mr r5, r4
/* 80078594 000754F4  EC 61 18 2A */	fadds f3, f1, f3
/* 80078598 000754F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007859C 000754FC  EC 02 20 2A */	fadds f0, f2, f4
/* 800785A0 00075500  38 81 00 08 */	addi r4, r1, 8
/* 800785A4 00075504  80 03 00 00 */	lwz r0, 0(r3)
/* 800785A8 00075508  38 61 00 0C */	addi r3, r1, 0xc
/* 800785AC 0007550C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800785B0 00075510  90 01 00 08 */	stw r0, 8(r1)
/* 800785B4 00075514  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800785B8 00075518  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 800785BC 0007551C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800785C0 00075520  48 00 00 15 */	bl J2DDrawFrame__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorUc
/* 800785C4 00075524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800785C8 00075528  7C 08 03 A6 */	mtlr r0
/* 800785CC 0007552C  38 21 00 20 */	addi r1, r1, 0x20
/* 800785D0 00075530  4E 80 00 20 */	blr 

.global J2DDrawFrame__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorUc
J2DDrawFrame__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorUc:
/* 800785D4 00075534  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800785D8 00075538  7C 08 02 A6 */	mflr r0
/* 800785DC 0007553C  90 01 01 04 */	stw r0, 0x104(r1)
/* 800785E0 00075540  39 61 01 00 */	addi r11, r1, 0x100
/* 800785E4 00075544  48 02 28 F1 */	bl func_8009AED4
/* 800785E8 00075548  7C 7D 1B 78 */	mr r29, r3
/* 800785EC 0007554C  7C 9E 23 78 */	mr r30, r4
/* 800785F0 00075550  7C BF 2B 78 */	mr r31, r5
/* 800785F4 00075554  38 61 00 1C */	addi r3, r1, 0x1c
/* 800785F8 00075558  4B FF FB 81 */	bl __ct__13J2DOrthoGraphFv
/* 800785FC 0007555C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80078600 00075560  38 61 00 1C */	addi r3, r1, 0x1c
/* 80078604 00075564  38 81 00 08 */	addi r4, r1, 8
/* 80078608 00075568  38 A1 00 0C */	addi r5, r1, 0xc
/* 8007860C 0007556C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80078610 00075570  38 C1 00 10 */	addi r6, r1, 0x10
/* 80078614 00075574  38 E1 00 14 */	addi r7, r1, 0x14
/* 80078618 00075578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007861C 0007557C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80078620 00075580  90 01 00 0C */	stw r0, 0xc(r1)
/* 80078624 00075584  90 01 00 08 */	stw r0, 8(r1)
/* 80078628 00075588  4B FF F5 D1 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 8007862C 0007558C  7F E4 FB 78 */	mr r4, r31
/* 80078630 00075590  38 61 00 1C */	addi r3, r1, 0x1c
/* 80078634 00075594  4B FF F6 E1 */	bl setLineWidth__14J2DGrafContextFUc
/* 80078638 00075598  7F A4 EB 78 */	mr r4, r29
/* 8007863C 0007559C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80078640 000755A0  4B FF F8 19 */	bl drawFrame__14J2DGrafContextFRCQ29JGeometry8TBox2<f>
/* 80078644 000755A4  3C 80 80 0E */	lis r4, __vt__13J2DOrthoGraph@ha
/* 80078648 000755A8  3C 60 80 0E */	lis r3, __vt__14J2DGrafContext@ha
/* 8007864C 000755AC  38 04 F7 94 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80078650 000755B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80078654 000755B4  38 03 F7 40 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 80078658 000755B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8007865C 000755BC  39 61 01 00 */	addi r11, r1, 0x100
/* 80078660 000755C0  48 02 28 C1 */	bl func_8009AF20
/* 80078664 000755C4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80078668 000755C8  7C 08 03 A6 */	mtlr r0
/* 8007866C 000755CC  38 21 01 00 */	addi r1, r1, 0x100
/* 80078670 000755D0  4E 80 00 20 */	blr 

.global getGrafType__13J2DOrthoGraphCFv
getGrafType__13J2DOrthoGraphCFv:
/* 80078674 000755D4  38 60 00 01 */	li r3, 1
/* 80078678 000755D8  4E 80 00 20 */	blr 
