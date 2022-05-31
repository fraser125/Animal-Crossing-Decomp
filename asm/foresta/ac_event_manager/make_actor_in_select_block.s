lbl_8041C0A4:
/* 8041C0A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041C0A8  7C 08 02 A6 */	mflr r0
/* 8041C0AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041C0B0  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C0B4  4B C7 EE 0D */	bl func_8009AEC0
/* 8041C0B8  7C 78 1B 78 */	mr r24, r3
/* 8041C0BC  7C 99 23 78 */	mr r25, r4
/* 8041C0C0  7C BA 2B 78 */	mr r26, r5
/* 8041C0C4  7C DE 33 78 */	mr r30, r6
/* 8041C0C8  7C FB 3B 78 */	mr r27, r7
/* 8041C0CC  7D 1C 43 78 */	mr r28, r8
/* 8041C0D0  7D 3D 4B 78 */	mr r29, r9
/* 8041C0D4  4B F8 8B F9 */	bl mFI_GetFieldId
/* 8041C0D8  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041C0DC  41 82 00 0C */	beq lbl_8041C0E8
/* 8041C0E0  38 60 00 00 */	li r3, 0
/* 8041C0E4  48 00 00 9C */	b lbl_8041C180
lbl_8041C0E8:
/* 8041C0E8  57 DF 06 3E */	clrlwi r31, r30, 0x18
/* 8041C0EC  80 79 00 00 */	lwz r3, 0(r25)
/* 8041C0F0  7F E4 FB 78 */	mr r4, r31
/* 8041C0F4  4B F8 21 B9 */	bl mEv_get_common_place
/* 8041C0F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C0FC  40 82 00 80 */	bne lbl_8041C17C
/* 8041C100  38 00 00 01 */	li r0, 1
/* 8041C104  B3 41 00 18 */	sth r26, 0x18(r1)
/* 8041C108  7F 03 C3 78 */	mr r3, r24
/* 8041C10C  7F 24 CB 78 */	mr r4, r25
/* 8041C110  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 8041C114  7F A7 EB 78 */	mr r7, r29
/* 8041C118  38 A1 00 08 */	addi r5, r1, 8
/* 8041C11C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8041C120  93 61 00 0C */	stw r27, 0xc(r1)
/* 8041C124  93 81 00 08 */	stw r28, 8(r1)
/* 8041C128  4B FF ED 45 */	bl search_select_unit
/* 8041C12C  2C 03 00 00 */	cmpwi r3, 0
/* 8041C130  40 82 00 18 */	bne lbl_8041C148
/* 8041C134  80 79 00 00 */	lwz r3, 0(r25)
/* 8041C138  38 80 00 20 */	li r4, 0x20
/* 8041C13C  4B F8 18 95 */	bl mEv_set_status
/* 8041C140  38 60 00 00 */	li r3, 0
/* 8041C144  48 00 00 3C */	b lbl_8041C180
lbl_8041C148:
/* 8041C148  80 79 00 00 */	lwz r3, 0(r25)
/* 8041C14C  7F E4 FB 78 */	mr r4, r31
/* 8041C150  4B F8 20 75 */	bl mEv_reserve_common_place
/* 8041C154  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C158  40 82 00 18 */	bne lbl_8041C170
/* 8041C15C  80 79 00 00 */	lwz r3, 0(r25)
/* 8041C160  38 80 00 20 */	li r4, 0x20
/* 8041C164  4B F8 18 6D */	bl mEv_set_status
/* 8041C168  38 60 00 00 */	li r3, 0
/* 8041C16C  48 00 00 14 */	b lbl_8041C180
lbl_8041C170:
/* 8041C170  38 81 00 08 */	addi r4, r1, 8
/* 8041C174  38 A0 00 14 */	li r5, 0x14
/* 8041C178  4B BE 73 19 */	bl memcpy
lbl_8041C17C:
/* 8041C17C  7F C3 F3 78 */	mr r3, r30
lbl_8041C180:
/* 8041C180  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C184  4B C7 ED 89 */	bl func_8009AF0C
/* 8041C188  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041C18C  7C 08 03 A6 */	mtlr r0
/* 8041C190  38 21 00 40 */	addi r1, r1, 0x40
/* 8041C194  4E 80 00 20 */	blr 
