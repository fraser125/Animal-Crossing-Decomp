lbl_804F7ED8:
/* 804F7ED8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804F7EDC  7C 08 02 A6 */	mflr r0
/* 804F7EE0  90 01 00 84 */	stw r0, 0x84(r1)
/* 804F7EE4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 804F7EE8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 804F7EEC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 804F7EF0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 804F7EF4  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 804F7EF8  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 804F7EFC  39 61 00 50 */	addi r11, r1, 0x50
/* 804F7F00  4B BA 2F D1 */	bl func_8009AED0
/* 804F7F04  7C 7D 1B 78 */	mr r29, r3
/* 804F7F08  7C 9E 23 78 */	mr r30, r4
/* 804F7F0C  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804F7F10  7C BF 2B 78 */	mr r31, r5
/* 804F7F14  3B 9D 01 74 */	addi r28, r29, 0x174
/* 804F7F18  2C 00 00 59 */	cmpwi r0, 0x59
/* 804F7F1C  40 82 00 10 */	bne lbl_804F7F2C
/* 804F7F20  3C 60 80 65 */	lis r3, lit_8275@ha /* 0x8064843C@ha */
/* 804F7F24  C0 63 84 3C */	lfs f3, lit_8275@l(r3)  /* 0x8064843C@l */
/* 804F7F28  48 00 00 0C */	b lbl_804F7F34
lbl_804F7F2C:
/* 804F7F2C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F7F30  C0 63 65 68 */	lfs f3, lit_604@l(r3)  /* 0x80646568@l */
lbl_804F7F34:
/* 804F7F34  3C C0 80 64 */	lis r6, lit_5641@ha /* 0x80647D6C@ha */
/* 804F7F38  3C A0 80 65 */	lis r5, lit_8613@ha /* 0x806484A4@ha */
/* 804F7F3C  3C 80 80 64 */	lis r4, lit_1165@ha /* 0x80646A24@ha */
/* 804F7F40  3C 60 80 65 */	lis r3, lit_6693@ha /* 0x806480E0@ha */
/* 804F7F44  38 E6 7D 6C */	addi r7, r6, lit_5641@l /* 0x80647D6C@l */
/* 804F7F48  38 C5 84 A4 */	addi r6, r5, lit_8613@l /* 0x806484A4@l */
/* 804F7F4C  38 A4 6A 24 */	addi r5, r4, lit_1165@l /* 0x80646A24@l */
/* 804F7F50  38 83 80 E0 */	addi r4, r3, lit_6693@l /* 0x806480E0@l */
/* 804F7F54  C0 07 00 00 */	lfs f0, 0(r7)
/* 804F7F58  7F 83 E3 78 */	mr r3, r28
/* 804F7F5C  C0 46 00 00 */	lfs f2, 0(r6)
/* 804F7F60  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F7F64  EF E0 18 2A */	fadds f31, f0, f3
/* 804F7F68  C0 04 00 00 */	lfs f0, 0(r4)
/* 804F7F6C  EF C2 18 2A */	fadds f30, f2, f3
/* 804F7F70  EF A1 18 2A */	fadds f29, f1, f3
/* 804F7F74  EC 20 18 2A */	fadds f1, f0, f3
/* 804F7F78  4B FD F6 89 */	bl Player_actor_Check_AnimationFrame
/* 804F7F7C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7F80  41 82 00 0C */	beq lbl_804F7F8C
/* 804F7F84  3B 80 00 03 */	li r28, 3
/* 804F7F88  48 00 00 C8 */	b lbl_804F8050
lbl_804F7F8C:
/* 804F7F8C  FC 20 F8 90 */	fmr f1, f31
/* 804F7F90  7F 83 E3 78 */	mr r3, r28
/* 804F7F94  4B FD F6 6D */	bl Player_actor_Check_AnimationFrame
/* 804F7F98  2C 03 00 00 */	cmpwi r3, 0
/* 804F7F9C  41 82 00 0C */	beq lbl_804F7FA8
/* 804F7FA0  3B 80 00 04 */	li r28, 4
/* 804F7FA4  48 00 00 AC */	b lbl_804F8050
lbl_804F7FA8:
/* 804F7FA8  FC 20 F0 90 */	fmr f1, f30
/* 804F7FAC  7F 83 E3 78 */	mr r3, r28
/* 804F7FB0  4B FD F6 51 */	bl Player_actor_Check_AnimationFrame
/* 804F7FB4  2C 03 00 00 */	cmpwi r3, 0
/* 804F7FB8  41 82 00 0C */	beq lbl_804F7FC4
/* 804F7FBC  3B 80 00 05 */	li r28, 5
/* 804F7FC0  48 00 00 90 */	b lbl_804F8050
lbl_804F7FC4:
/* 804F7FC4  FC 20 E8 90 */	fmr f1, f29
/* 804F7FC8  7F 83 E3 78 */	mr r3, r28
/* 804F7FCC  4B FD F6 35 */	bl Player_actor_Check_AnimationFrame
/* 804F7FD0  2C 03 00 00 */	cmpwi r3, 0
/* 804F7FD4  41 82 00 EC */	beq lbl_804F80C0
/* 804F7FD8  80 DF 00 00 */	lwz r6, 0(r31)
/* 804F7FDC  38 61 00 20 */	addi r3, r1, 0x20
/* 804F7FE0  80 BF 00 04 */	lwz r5, 4(r31)
/* 804F7FE4  38 80 00 00 */	li r4, 0
/* 804F7FE8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804F7FEC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804F7FF0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804F7FF4  90 01 00 28 */	stw r0, 0x28(r1)
/* 804F7FF8  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804F7FFC  90 A1 00 30 */	stw r5, 0x30(r1)
/* 804F8000  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F8004  4B E9 10 A9 */	bl mCoBG_Wpos2Attribute
/* 804F8008  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804F800C  7C 69 07 34 */	extsh r9, r3
/* 804F8010  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804F8014  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F8018  3C 63 00 02 */	addis r3, r3, 2
/* 804F801C  7F C7 F3 78 */	mr r7, r30
/* 804F8020  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 804F8024  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F8028  38 81 00 2C */	addi r4, r1, 0x2c
/* 804F802C  A8 DD 00 DE */	lha r6, 0xde(r29)
/* 804F8030  81 83 00 00 */	lwz r12, 0(r3)
/* 804F8034  38 60 00 53 */	li r3, 0x53
/* 804F8038  38 A0 00 02 */	li r5, 2
/* 804F803C  39 40 00 02 */	li r10, 2
/* 804F8040  7D 89 03 A6 */	mtctr r12
/* 804F8044  4E 80 04 21 */	bctrl 
/* 804F8048  48 00 00 78 */	b lbl_804F80C0
/* 804F804C  48 00 00 74 */	b lbl_804F80C0
lbl_804F8050:
/* 804F8050  80 DF 00 00 */	lwz r6, 0(r31)
/* 804F8054  38 61 00 08 */	addi r3, r1, 8
/* 804F8058  80 BF 00 04 */	lwz r5, 4(r31)
/* 804F805C  38 80 00 00 */	li r4, 0
/* 804F8060  80 1F 00 08 */	lwz r0, 8(r31)
/* 804F8064  90 C1 00 08 */	stw r6, 8(r1)
/* 804F8068  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804F806C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F8070  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804F8074  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804F8078  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804F807C  4B E9 10 31 */	bl mCoBG_Wpos2Attribute
/* 804F8080  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804F8084  7C 69 07 34 */	extsh r9, r3
/* 804F8088  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804F808C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F8090  3C 63 00 02 */	addis r3, r3, 2
/* 804F8094  7F C7 F3 78 */	mr r7, r30
/* 804F8098  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 804F809C  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F80A0  7F 8A E3 78 */	mr r10, r28
/* 804F80A4  38 81 00 14 */	addi r4, r1, 0x14
/* 804F80A8  81 83 00 00 */	lwz r12, 0(r3)
/* 804F80AC  38 60 00 52 */	li r3, 0x52
/* 804F80B0  A8 DD 00 DE */	lha r6, 0xde(r29)
/* 804F80B4  38 A0 00 02 */	li r5, 2
/* 804F80B8  7D 89 03 A6 */	mtctr r12
/* 804F80BC  4E 80 04 21 */	bctrl 
lbl_804F80C0:
/* 804F80C0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 804F80C4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 804F80C8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 804F80CC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 804F80D0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 804F80D4  39 61 00 50 */	addi r11, r1, 0x50
/* 804F80D8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 804F80DC  4B BA 2E 41 */	bl func_8009AF1C
/* 804F80E0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804F80E4  7C 08 03 A6 */	mtlr r0
/* 804F80E8  38 21 00 80 */	addi r1, r1, 0x80
/* 804F80EC  4E 80 00 20 */	blr 
