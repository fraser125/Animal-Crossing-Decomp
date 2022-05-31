lbl_803FA200:
/* 803FA200  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FA204  7C 08 02 A6 */	mflr r0
/* 803FA208  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FA20C  39 61 00 30 */	addi r11, r1, 0x30
/* 803FA210  4B CA 0C B5 */	bl func_8009AEC4
/* 803FA214  4B FF FE 45 */	bl mCD_get_aram_save_data_max_size
/* 803FA218  7C 7B 1B 78 */	mr r27, r3
/* 803FA21C  4B FF D5 D9 */	bl mCD_malloc_32
/* 803FA220  7C 7A 1B 79 */	or. r26, r3, r3
/* 803FA224  41 82 00 78 */	beq lbl_803FA29C
/* 803FA228  3C 80 80 66 */	lis r4, init_proc@ha /* 0x8065E780@ha */
/* 803FA22C  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 803FA230  3C A0 81 17 */	lis r5, l_aram_block_p_table@ha /* 0x8117161C@ha */
/* 803FA234  3B 20 00 00 */	li r25, 0
/* 803FA238  3B A4 E7 80 */	addi r29, r4, init_proc@l /* 0x8065E780@l */
/* 803FA23C  3B C3 E7 74 */	addi r30, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 803FA240  3B 85 16 1C */	addi r28, r5, l_aram_block_p_table@l /* 0x8117161C@l */
/* 803FA244  3B E0 00 00 */	li r31, 0
lbl_803FA248:
/* 803FA248  7C 1C F8 2E */	lwzx r0, r28, r31
/* 803FA24C  28 00 00 00 */	cmplwi r0, 0
/* 803FA250  41 82 00 30 */	beq lbl_803FA280
/* 803FA254  7F 43 D3 78 */	mr r3, r26
/* 803FA258  7F 64 DB 78 */	mr r4, r27
/* 803FA25C  4B C6 2E 0D */	bl bzero
/* 803FA260  7D 9D F8 2E */	lwzx r12, r29, r31
/* 803FA264  7F 43 D3 78 */	mr r3, r26
/* 803FA268  7D 89 03 A6 */	mtctr r12
/* 803FA26C  4E 80 04 21 */	bctrl 
/* 803FA270  7C 9E F8 2E */	lwzx r4, r30, r31
/* 803FA274  7F 43 D3 78 */	mr r3, r26
/* 803FA278  7F 25 CB 78 */	mr r5, r25
/* 803FA27C  4B FF FD 61 */	bl mCD_save_data_main_to_aram
lbl_803FA280:
/* 803FA280  3B 39 00 01 */	addi r25, r25, 1
/* 803FA284  3B FF 00 04 */	addi r31, r31, 4
/* 803FA288  2C 19 00 03 */	cmpwi r25, 3
/* 803FA28C  41 80 FF BC */	blt lbl_803FA248
/* 803FA290  7F 43 D3 78 */	mr r3, r26
/* 803FA294  4B FC 22 21 */	bl zelda_free
/* 803FA298  4B FF FC 59 */	bl mCD_clear_aram_access_bit
lbl_803FA29C:
/* 803FA29C  39 61 00 30 */	addi r11, r1, 0x30
/* 803FA2A0  4B CA 0C 71 */	bl func_8009AF10
/* 803FA2A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FA2A8  7C 08 03 A6 */	mtlr r0
/* 803FA2AC  38 21 00 30 */	addi r1, r1, 0x30
/* 803FA2B0  4E 80 00 20 */	blr 
