lbl_80608F48:
/* 80608F48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80608F4C  7C 08 02 A6 */	mflr r0
/* 80608F50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80608F54  39 61 00 40 */	addi r11, r1, 0x40
/* 80608F58  4B A9 1F 6D */	bl func_8009AEC4
/* 80608F5C  7C DA 33 78 */	mr r26, r6
/* 80608F60  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80608F64  7C 7F 1B 78 */	mr r31, r3
/* 80608F68  7C 99 23 78 */	mr r25, r4
/* 80608F6C  7C FB 3B 78 */	mr r27, r7
/* 80608F70  7D 1C 43 78 */	mr r28, r8
/* 80608F74  7D 3D 4B 78 */	mr r29, r9
/* 80608F78  7F 43 D3 78 */	mr r3, r26
/* 80608F7C  4B DD 06 C5 */	bl get_player_actor_withoutCheck
/* 80608F80  7C 7E 1B 78 */	mr r30, r3
/* 80608F84  A8 61 00 10 */	lha r3, 0x10(r1)
/* 80608F88  4B DB 1B 69 */	bl sin_s
/* 80608F8C  3C 60 80 65 */	lis r3, data_8064BDCC@ha /* 0x8064BDCC@ha */
/* 80608F90  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80608F94  C0 63 BD CC */	lfs f3, data_8064BDCC@l(r3)  /* 0x8064BDCC@l */
/* 80608F98  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80608F9C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80608FA0  A8 61 00 10 */	lha r3, 0x10(r1)
/* 80608FA4  EC 22 08 2A */	fadds f1, f2, f1
/* 80608FA8  EC 00 08 2A */	fadds f0, f0, f1
/* 80608FAC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80608FB0  4B DB 1A ED */	bl cos_s
/* 80608FB4  3C 60 80 65 */	lis r3, data_8064BDCC@ha /* 0x8064BDCC@ha */
/* 80608FB8  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80608FBC  38 A3 BD CC */	addi r5, r3, data_8064BDCC@l /* 0x8064BDCC@l */
/* 80608FC0  3C 80 80 65 */	lis r4, lit_380@ha /* 0x8064BDD0@ha */
/* 80608FC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80608FC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80608FCC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80608FD0  7F 46 D3 78 */	mr r6, r26
/* 80608FD4  EC 60 00 72 */	fmuls f3, f0, f1
/* 80608FD8  C0 24 BD D0 */	lfs f1, lit_380@l(r4)  /* 0x8064BDD0@l */
/* 80608FDC  3D 63 00 02 */	addis r11, r3, 2
/* 80608FE0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80608FE4  7F 68 DB 78 */	mr r8, r27
/* 80608FE8  7F 29 CB 78 */	mr r9, r25
/* 80608FEC  EC 42 18 2A */	fadds f2, f2, f3
/* 80608FF0  7F 8A E3 78 */	mr r10, r28
/* 80608FF4  38 81 00 14 */	addi r4, r1, 0x14
/* 80608FF8  38 E1 00 10 */	addi r7, r1, 0x10
/* 80608FFC  38 60 00 52 */	li r3, 0x52
/* 80609000  38 A0 00 00 */	li r5, 0
/* 80609004  EC 00 10 2A */	fadds f0, f0, f2
/* 80609008  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8060900C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80609010  EC 00 00 72 */	fmuls f0, f0, f1
/* 80609014  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80609018  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8060901C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80609020  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80609024  83 DF 00 00 */	lwz r30, 0(r31)
/* 80609028  81 9F 00 04 */	lwz r12, 4(r31)
/* 8060902C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80609030  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80609034  91 81 00 18 */	stw r12, 0x18(r1)
/* 80609038  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060903C  93 A1 00 08 */	stw r29, 8(r1)
/* 80609040  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80609044  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80609048  7D 89 03 A6 */	mtctr r12
/* 8060904C  4E 80 04 21 */	bctrl 
/* 80609050  39 61 00 40 */	addi r11, r1, 0x40
/* 80609054  4B A9 1E BD */	bl func_8009AF10
/* 80609058  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060905C  7C 08 03 A6 */	mtlr r0
/* 80609060  38 21 00 40 */	addi r1, r1, 0x40
/* 80609064  4E 80 00 20 */	blr 
