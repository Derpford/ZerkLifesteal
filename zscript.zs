version "4.0"
class ZerkLifestealHandler : EventHandler {
    void HandleZerk(Name power, WorldEvent e) {
        if (e.DamageSource.CountInv(power) > 0 && e.Thing.Vec3To(e.DamageSource).length() <= 128) {
            e.DamageSource.GiveBody(1);
        }

    }
    override void WorldThingDamaged(WorldEvent e) {
        if (!e.DamageSource) { return; }
        HandleZerk("PowerStrength",e);
        // NTMAi compat
        HandleZerk("NTM_PowerBerserk",e);
    }
}