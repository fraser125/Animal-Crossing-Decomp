lbl_80508E48:
/* 80508E48  3D 20 80 6A */	lis r9, x_offset@ha /* 0x8069EE40@ha */
/* 80508E4C  54 EA 17 3A */	rlwinm r10, r7, 2, 0x1c, 0x1d
/* 80508E50  39 29 EE 40 */	addi r9, r9, x_offset@l /* 0x8069EE40@l */
/* 80508E54  3D 00 80 6A */	lis r8, z_offset@ha /* 0x8069EE50@ha */
/* 80508E58  7C 09 50 2E */	lwzx r0, r9, r10
/* 80508E5C  38 E8 EE 50 */	addi r7, r8, z_offset@l /* 0x8069EE50@l */
/* 80508E60  7C 05 02 14 */	add r0, r5, r0
/* 80508E64  90 03 00 00 */	stw r0, 0(r3)
/* 80508E68  7C 07 50 2E */	lwzx r0, r7, r10
/* 80508E6C  7C 06 02 14 */	add r0, r6, r0
/* 80508E70  90 04 00 00 */	stw r0, 0(r4)
/* 80508E74  4E 80 00 20 */	blr 
