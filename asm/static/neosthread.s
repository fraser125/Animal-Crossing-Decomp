.include "macros.inc"

.section .text

.org 0x800190E0

.global Neos_Update__FPs
Neos_Update__FPs:
/* 800190E0 00016040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800190E4 00016044  7C 08 02 A6 */	mflr r0
/* 800190E8 00016048  90 01 00 14 */	stw r0, 0x14(r1)
/* 800190EC 0001604C  80 0D 88 E0 */	lwz r0, neosproc_mq_init-_SDA_BASE_(r13)
/* 800190F0 00016050  28 00 00 00 */	cmplwi r0, 0
/* 800190F4 00016054  41 82 00 28 */	beq lbl_8001911C
/* 800190F8 00016058  3C A0 80 18 */	lis r5, neosproc_mq@ha
/* 800190FC 0001605C  7C 64 1B 78 */	mr r4, r3
/* 80019100 00016060  38 65 00 20 */	addi r3, r5, neosproc_mq@l
/* 80019104 00016064  38 A0 00 00 */	li r5, 0
/* 80019108 00016068  48 06 2B 79 */	bl OSSendMessage
/* 8001910C 0001606C  20 03 00 01 */	subfic r0, r3, 1
/* 80019110 00016070  7C 00 00 34 */	cntlzw r0, r0
/* 80019114 00016074  54 03 D9 7E */	srwi r3, r0, 5
/* 80019118 00016078  48 00 00 08 */	b lbl_80019120
lbl_8001911C:
/* 8001911C 0001607C  38 60 00 00 */	li r3, 0
lbl_80019120:
/* 80019120 00016080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019124 00016084  7C 08 03 A6 */	mtlr r0
/* 80019128 00016088  38 21 00 10 */	addi r1, r1, 0x10
/* 8001912C 0001608C  4E 80 00 20 */	blr 
/* 80019130 00016090  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80019134 00016094  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80019138 00016098  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001913C 0001609C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global ImageLoaded__FUl
ImageLoaded__FUl:
/* 80019140 000160A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80019144 000160A4  7C 08 02 A6 */	mflr r0
/* 80019148 000160A8  3C 60 80 18 */	lis r3, neosproc_mq@ha
/* 8001914C 000160AC  3C 80 12 34 */	lis r4, 0x12345678@ha
/* 80019150 000160B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019154 000160B4  38 63 00 20 */	addi r3, r3, neosproc_mq@l
/* 80019158 000160B8  38 A0 00 01 */	li r5, 1
/* 8001915C 000160BC  38 84 56 78 */	addi r4, r4, 0x12345678@l
/* 80019160 000160C0  48 06 2B 21 */	bl OSSendMessage
/* 80019164 000160C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019168 000160C8  7C 08 03 A6 */	mtlr r0
/* 8001916C 000160CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80019170 000160D0  4E 80 00 20 */	blr 
/* 80019174 000160D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80019178 000160D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001917C 000160DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Neos_CheckBoot__Fv
Neos_CheckBoot__Fv:
/* 80019180 000160E0  80 6D 88 E8 */	lwz r3, neos_ready-_SDA_BASE_(r13)
/* 80019184 000160E4  4E 80 00 20 */	blr 
/* 80019188 000160E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001918C 000160EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80019190 000160F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80019194 000160F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80019198 000160F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001919C 000160FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global neosproc__FPv
neosproc__FPv:
/* 800191A0 00016100  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800191A4 00016104  7C 08 02 A6 */	mflr r0
/* 800191A8 00016108  90 01 00 34 */	stw r0, 0x34(r1)
/* 800191AC 0001610C  39 61 00 30 */	addi r11, r1, 0x30
/* 800191B0 00016110  48 08 1D 15 */	bl func_8009AEC4
/* 800191B4 00016114  88 0D 88 F4 */	lbz r0, lbl_80218474-_SDA_BASE_(r13)
/* 800191B8 00016118  7C 00 07 75 */	extsb. r0, r0
/* 800191BC 0001611C  40 82 00 14 */	bne lbl_800191D0
/* 800191C0 00016120  38 60 00 00 */	li r3, 0
/* 800191C4 00016124  38 00 00 01 */	li r0, 1
/* 800191C8 00016128  90 6D 88 F0 */	stw r3, cur$193-_SDA_BASE_(r13)
/* 800191CC 0001612C  98 0D 88 F4 */	stb r0, lbl_80218474-_SDA_BASE_(r13)
lbl_800191D0:
/* 800191D0 00016130  38 00 00 00 */	li r0, 0
/* 800191D4 00016134  3C 60 80 18 */	lis r3, neosproc_mq@ha
/* 800191D8 00016138  90 0D 88 E8 */	stw r0, neos_ready-_SDA_BASE_(r13)
/* 800191DC 0001613C  38 63 00 20 */	addi r3, r3, neosproc_mq@l
/* 800191E0 00016140  38 8D 88 EC */	addi r4, r13, msgbuf$190-_SDA_BASE_
/* 800191E4 00016144  38 A0 00 01 */	li r5, 1
/* 800191E8 00016148  48 06 2A 39 */	bl OSInitMessageQueue
/* 800191EC 0001614C  38 00 00 01 */	li r0, 1
/* 800191F0 00016150  90 0D 88 E0 */	stw r0, neosproc_mq_init-_SDA_BASE_(r13)
/* 800191F4 00016154  4B FF F7 4D */	bl GetNeosRomTop__Fv
/* 800191F8 00016158  7C 7B 1B 78 */	mr r27, r3
/* 800191FC 0001615C  4B FF F7 65 */	bl GetNeosRom_PreLoaded__Fv
/* 80019200 00016160  7C 7A 1B 78 */	mr r26, r3
/* 80019204 00016164  4B FF F7 1D */	bl GetNeos_FileTop__Fv
/* 80019208 00016168  3C 80 80 0B */	lis r4, @218@ha
/* 8001920C 0001616C  3C E0 80 02 */	lis r7, ImageLoaded__FUl@ha
/* 80019210 00016170  7C 66 1B 78 */	mr r6, r3
/* 80019214 00016174  7C BB D2 14 */	add r5, r27, r26
/* 80019218 00016178  39 27 91 40 */	addi r9, r7, ImageLoaded__FUl@l
/* 8001921C 0001617C  38 84 A5 38 */	addi r4, r4, @218@l
/* 80019220 00016180  38 60 00 00 */	li r3, 0
/* 80019224 00016184  38 E0 00 00 */	li r7, 0
/* 80019228 00016188  39 00 00 00 */	li r8, 0
/* 8001922C 0001618C  48 00 16 55 */	bl DVDT_LoadtoARAM__FUlPcUlUlUlPUlPFUl_v
/* 80019230 00016190  3C 60 80 18 */	lis r3, neosproc_mq@ha
/* 80019234 00016194  3B 43 00 20 */	addi r26, r3, neosproc_mq@l
lbl_80019238:
/* 80019238 00016198  7F 43 D3 78 */	mr r3, r26
/* 8001923C 0001619C  38 81 00 08 */	addi r4, r1, 8
/* 80019240 000161A0  38 A0 00 01 */	li r5, 1
/* 80019244 000161A4  48 06 2B 05 */	bl OSReceiveMessage
/* 80019248 000161A8  80 61 00 08 */	lwz r3, 8(r1)
/* 8001924C 000161AC  3C 03 ED CC */	addis r0, r3, 0xedcc
/* 80019250 000161B0  28 00 56 78 */	cmplwi r0, 0x5678
/* 80019254 000161B4  40 82 FF E4 */	bne lbl_80019238
/* 80019258 000161B8  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 8001925C 000161BC  54 03 08 3C */	slwi r3, r0, 1
/* 80019260 000161C0  4B FF EC 81 */	bl OSAlloc2
/* 80019264 000161C4  3C 80 80 0D */	lis r4, AGC@ha
/* 80019268 000161C8  90 6D 88 E4 */	stw r3, tmp_buf-_SDA_BASE_(r13)
/* 8001926C 000161CC  38 64 36 B8 */	addi r3, r4, AGC@l
/* 80019270 000161D0  83 23 00 04 */	lwz r25, 4(r3)
/* 80019274 000161D4  7F 23 CB 78 */	mr r3, r25
/* 80019278 000161D8  4B FF EC 69 */	bl OSAlloc2
/* 8001927C 000161DC  7F 24 CB 78 */	mr r4, r25
/* 80019280 000161E0  48 00 9A 61 */	bl Nas_InitAudio__FPUxl
/* 80019284 000161E4  4B FF FA 5D */	bl NeosSync__Fv
/* 80019288 000161E8  38 00 00 01 */	li r0, 1
/* 8001928C 000161EC  3C 60 80 02 */	lis r3, MixCpu__Fl@ha
/* 80019290 000161F0  90 0D 88 E8 */	stw r0, neos_ready-_SDA_BASE_(r13)
/* 80019294 000161F4  38 63 9D 40 */	addi r3, r3, MixCpu__Fl@l
/* 80019298 000161F8  38 80 00 03 */	li r4, 3
/* 8001929C 000161FC  4B FF F1 05 */	bl Jac_RegisterMixcallback
/* 800192A0 00016200  3C 80 80 0B */	lis r4, @219@ha
/* 800192A4 00016204  3C 60 80 18 */	lis r3, task_buf$191@ha
/* 800192A8 00016208  3C A0 80 18 */	lis r5, neosproc_mq@ha
/* 800192AC 0001620C  3B 64 A5 48 */	addi r27, r4, @219@l
/* 800192B0 00016210  3B 83 00 40 */	addi r28, r3, task_buf$191@l
/* 800192B4 00016214  3B 45 00 20 */	addi r26, r5, neosproc_mq@l
lbl_800192B8:
/* 800192B8 00016218  7F 43 D3 78 */	mr r3, r26
/* 800192BC 0001621C  38 81 00 08 */	addi r4, r1, 8
/* 800192C0 00016220  38 A0 00 01 */	li r5, 1
/* 800192C4 00016224  48 06 2A 85 */	bl OSReceiveMessage
/* 800192C8 00016228  7F 64 DB 78 */	mr r4, r27
/* 800192CC 0001622C  38 60 00 08 */	li r3, 8
/* 800192D0 00016230  4B FE F1 29 */	bl Probe_Start
/* 800192D4 00016234  80 0D 88 F0 */	lwz r0, cur$193-_SDA_BASE_(r13)
/* 800192D8 00016238  38 C0 00 00 */	li r6, 0
/* 800192DC 0001623C  83 E1 00 08 */	lwz r31, 8(r1)
/* 800192E0 00016240  1C 00 32 00 */	mulli r0, r0, 0x3200
/* 800192E4 00016244  80 8D 88 E4 */	lwz r4, tmp_buf-_SDA_BASE_(r13)
/* 800192E8 00016248  80 AD 80 70 */	lwz r5, JAC_FRAMESAMPLES-_SDA_BASE_(r13)
/* 800192EC 0001624C  7C 7C 02 14 */	add r3, r28, r0
/* 800192F0 00016250  48 00 CC 11 */	bl CreateAudioTask__FP4AcmdPsUll
/* 800192F4 00016254  80 AD 88 F0 */	lwz r5, cur$193-_SDA_BASE_(r13)
/* 800192F8 00016258  3B AD 80 60 */	addi r29, r13, tasks$192-_SDA_BASE_
/* 800192FC 0001625C  54 A4 10 3A */	slwi r4, r5, 2
/* 80019300 00016260  38 05 00 01 */	addi r0, r5, 1
/* 80019304 00016264  7C 7D 21 2E */	stwx r3, r29, r4
/* 80019308 00016268  54 1E 17 7A */	rlwinm r30, r0, 2, 0x1d, 0x1d
/* 8001930C 0001626C  54 19 07 FE */	clrlwi r25, r0, 0x1f
/* 80019310 00016270  7C 9D F0 2E */	lwzx r4, r29, r30
/* 80019314 00016274  28 04 00 00 */	cmplwi r4, 0
/* 80019318 00016278  41 82 00 3C */	beq lbl_80019354
/* 8001931C 0001627C  1C B9 32 00 */	mulli r5, r25, 0x3200
/* 80019320 00016280  3C 60 80 18 */	lis r3, task_buf$191@ha
/* 80019324 00016284  38 03 00 40 */	addi r0, r3, task_buf$191@l
/* 80019328 00016288  7C 60 2A 14 */	add r3, r0, r5
/* 8001932C 0001628C  38 A0 00 00 */	li r5, 0
/* 80019330 00016290  4B FF D9 F1 */	bl RspStart2__FPUlll
/* 80019334 00016294  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 80019338 00016298  38 60 00 00 */	li r3, 0
/* 8001933C 0001629C  7C 7D F1 2E */	stwx r3, r29, r30
/* 80019340 000162A0  7F E4 FB 78 */	mr r4, r31
/* 80019344 000162A4  80 6D 88 E4 */	lwz r3, tmp_buf-_SDA_BASE_(r13)
/* 80019348 000162A8  54 05 08 3C */	slwi r5, r0, 1
/* 8001934C 000162AC  4B FF F3 75 */	bl Jac_bcopy__FPvPvl
/* 80019350 000162B0  48 00 00 14 */	b lbl_80019364
lbl_80019354:
/* 80019354 000162B4  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 80019358 000162B8  7F E3 FB 78 */	mr r3, r31
/* 8001935C 000162BC  54 04 08 3C */	slwi r4, r0, 1
/* 80019360 000162C0  4B FF F4 C1 */	bl Jac_bzero__FPvl
lbl_80019364:
/* 80019364 000162C4  38 60 00 08 */	li r3, 8
/* 80019368 000162C8  4B FE F0 95 */	bl Probe_Finish
/* 8001936C 000162CC  4B FF F9 75 */	bl NeosSync__Fv
/* 80019370 000162D0  93 2D 88 F0 */	stw r25, cur$193-_SDA_BASE_(r13)
/* 80019374 000162D4  4B FF FF 44 */	b lbl_800192B8
/* 80019378 000162D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001937C 000162DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
