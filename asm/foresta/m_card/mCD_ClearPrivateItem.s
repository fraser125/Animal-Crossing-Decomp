lbl_804018EC:
/* 804018EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804018F0  7C 08 02 A6 */	mflr r0
/* 804018F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 804018F8  39 61 00 60 */	addi r11, r1, 0x60
/* 804018FC  4B C9 95 CD */	bl func_8009AEC8
/* 80401900  7C 9A 23 79 */	or. r26, r4, r4
/* 80401904  7C 7F 1B 78 */	mr r31, r3
/* 80401908  41 82 00 AC */	beq lbl_804019B4
/* 8040190C  7F 43 D3 78 */	mr r3, r26
/* 80401910  38 80 10 14 */	li r4, 0x1014
/* 80401914  4B C5 B7 55 */	bl bzero
/* 80401918  38 1A 0F DC */	addi r0, r26, 0xfdc
/* 8040191C  38 7A 0F F2 */	addi r3, r26, 0xff2
/* 80401920  90 01 00 08 */	stw r0, 8(r1)
/* 80401924  38 1A 10 08 */	addi r0, r26, 0x1008
/* 80401928  38 9F 00 68 */	addi r4, r31, 0x68
/* 8040192C  3B 9F 00 94 */	addi r28, r31, 0x94
/* 80401930  90 61 00 0C */	stw r3, 0xc(r1)
/* 80401934  3B BF 02 EC */	addi r29, r31, 0x2ec
/* 80401938  3B DF 04 E0 */	addi r30, r31, 0x4e0
/* 8040193C  39 9F 10 A8 */	addi r12, r31, 0x10a8
/* 80401940  90 01 00 10 */	stw r0, 0x10(r1)
/* 80401944  39 7F 10 DC */	addi r11, r31, 0x10dc
/* 80401948  38 1F 10 F8 */	addi r0, r31, 0x10f8
/* 8040194C  7F 43 D3 78 */	mr r3, r26
/* 80401950  90 81 00 14 */	stw r4, 0x14(r1)
/* 80401954  38 9A 00 1E */	addi r4, r26, 0x1e
/* 80401958  38 BA 00 1F */	addi r5, r26, 0x1f
/* 8040195C  38 DA 00 20 */	addi r6, r26, 0x20
/* 80401960  89 5F 00 86 */	lbz r10, 0x86(r31)
/* 80401964  38 FA 00 24 */	addi r7, r26, 0x24
/* 80401968  39 1A 00 28 */	addi r8, r26, 0x28
/* 8040196C  39 3A 02 80 */	addi r9, r26, 0x280
/* 80401970  91 41 00 18 */	stw r10, 0x18(r1)
/* 80401974  39 5A 04 38 */	addi r10, r26, 0x438
/* 80401978  8B 7F 00 87 */	lbz r27, 0x87(r31)
/* 8040197C  93 61 00 1C */	stw r27, 0x1c(r1)
/* 80401980  83 7F 00 88 */	lwz r27, 0x88(r31)
/* 80401984  93 61 00 20 */	stw r27, 0x20(r1)
/* 80401988  83 7F 00 8C */	lwz r27, 0x8c(r31)
/* 8040198C  93 61 00 24 */	stw r27, 0x24(r1)
/* 80401990  93 81 00 28 */	stw r28, 0x28(r1)
/* 80401994  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80401998  93 C1 00 30 */	stw r30, 0x30(r1)
/* 8040199C  91 81 00 34 */	stw r12, 0x34(r1)
/* 804019A0  91 61 00 38 */	stw r11, 0x38(r1)
/* 804019A4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804019A8  4B FF FD F5 */	bl mCD_CopyKeep
/* 804019AC  38 00 00 01 */	li r0, 1
/* 804019B0  98 1A 0F F0 */	stb r0, 0xff0(r26)
lbl_804019B4:
/* 804019B4  38 7F 00 68 */	addi r3, r31, 0x68
/* 804019B8  38 80 00 1E */	li r4, 0x1e
/* 804019BC  4B C5 B6 AD */	bl bzero
/* 804019C0  38 00 00 00 */	li r0, 0
/* 804019C4  38 7F 00 94 */	addi r3, r31, 0x94
/* 804019C8  90 1F 00 88 */	stw r0, 0x88(r31)
/* 804019CC  38 80 00 0F */	li r4, 0xf
/* 804019D0  98 1F 00 86 */	stb r0, 0x86(r31)
/* 804019D4  98 1F 00 87 */	stb r0, 0x87(r31)
/* 804019D8  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 804019DC  4B FE 0F 0D */	bl mQst_ClearDelivery
/* 804019E0  38 7F 02 EC */	addi r3, r31, 0x2ec
/* 804019E4  38 80 00 05 */	li r4, 5
/* 804019E8  4B FE 0F 65 */	bl mQst_ClearErrand
/* 804019EC  38 7F 04 E0 */	addi r3, r31, 0x4e0
/* 804019F0  38 80 00 0A */	li r4, 0xa
/* 804019F4  4B FB AD 5D */	bl mMl_clear_mail_box
/* 804019F8  38 7F 10 A8 */	addi r3, r31, 0x10a8
/* 804019FC  38 80 00 14 */	li r4, 0x14
/* 80401A00  4B C5 B6 69 */	bl bzero
/* 80401A04  38 7F 10 F8 */	addi r3, r31, 0x10f8
/* 80401A08  4B FD E7 E1 */	bl mPr_ClearAnimalMemory
/* 80401A0C  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 80401A10  4B FC BA 41 */	bl mNpc_ClearRemail
/* 80401A14  39 61 00 60 */	addi r11, r1, 0x60
/* 80401A18  4B C9 94 FD */	bl func_8009AF14
/* 80401A1C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80401A20  7C 08 03 A6 */	mtlr r0
/* 80401A24  38 21 00 60 */	addi r1, r1, 0x60
/* 80401A28  4E 80 00 20 */	blr 
